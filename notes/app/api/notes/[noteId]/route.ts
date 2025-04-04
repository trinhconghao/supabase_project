// app/api/notes/[noteId]/route.ts
import { NextResponse } from "next/server";
import { createClient } from "@/utils/supabase/client";
import { deleteNote, updateNote } from "@/utils/noteService";

export async function PUT(req: Request, context: { params: { noteId: string } }) {
  // Dùng await cho params để tránh lỗi
  const { noteId } = await context.params;
  
  const supabase = await createClient();

  // Lấy token từ header Authorization
  const token = req.headers.get("Authorization")?.replace("Bearer ", "");

  if (!token) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  // Xác thực user với token
  const { data: { user }, error } = await supabase.auth.getUser(token);  // Chú ý sửa phần này

  if (error || !user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const { newText } = await req.json();

  try {
    const updatedNote = await updateNote(noteId, user.id, newText);
    return NextResponse.json(updatedNote);
  } catch (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }
}

export async function DELETE(req: Request, { params }: { params: { noteId: string } }) {
    // Await params
    const { noteId } = await params;  // Lấy noteId từ URL
    const supabase = await createClient();
  
    // Lấy token từ header Authorization
    const token = req.headers.get('Authorization')?.replace('Bearer ', '');
    
    if (!token) {
      return NextResponse.json({ error: "Unauthorized: No token provided" }, { status: 401 });
    }
  
    // Xác thực user với token
    const { data: { user }, error } = await supabase.auth.getUser(token);
  
    if (error || !user) {
      return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
    }
  
    try {
      // Thực hiện xóa ghi chú
      const deletedNote = await deleteNote(noteId, user.id);  // Xóa note
      if (!deletedNote) {
        throw new Error("Failed to delete note");
      }
      return NextResponse.json(deletedNote);
    } catch (error) {
      console.error("Error in DELETE API:", error.message); // Log lỗi
      return NextResponse.json({ error: error.message }, { status: 500 });
    }
  }
  
  