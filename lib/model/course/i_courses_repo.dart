import 'package:dartz/dartz.dart';

import 'course_model.dart';
import 'courses_failure.dart';

abstract class ICoursesRepo {
  Future<Either<CourseFailure, List<CourseModel>>> getCourses();
  // Future<Either<CourseFailure, CourseModel>> createCourse(String name);
  // Future<Either<CourseFailure, Unit>> deleteCourse(String courseId);
  // Future<Either<CourseFailure, Unit>> updateCourse({
  //   required String courseId,
  //   required String name,
  // });
  // Future<Either<CourseFailure, Unit>> addStudentToCourse({
  //   required String courseId,
  //   required String studentEmail,
  // });
  // Future<Either<CourseFailure, Unit>> removeStudentFromCourse({
  //   required String courseId,
  //   required String studentEmail,
  // });
}
