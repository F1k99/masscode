class User {
  final String id;
  final String name;
  final double AnnualLeaveBalance;
  final int SickLeaveBalance;
  final int HospitalisationBalance;
  final int TotalAnnualLeave;
  final int TotalSickLeave;
  final int TotalHospitalisation;

  User({
    required this.id,
    required this.name,
    required this.AnnualLeaveBalance,
    required this.SickLeaveBalance,
    required this.HospitalisationBalance,
    required this.TotalAnnualLeave,
    required this.TotalSickLeave,
    required this.TotalHospitalisation,
  });
}
