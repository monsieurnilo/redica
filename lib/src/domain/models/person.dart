import 'package:redica/src/domain/interfaces/trackable_entity.dart';

class Person implements TrackableEntity {
  final String firstName;
  final String? middleName;
  final String lastName;
  final bool sex;
  final String? description;
  final String? email;
  final String? phone;
  final String? address;
  final String? region;
  final String? city;
  final String? country;
  final String? postalCode;
  final String? birthPlace;
  final DateTime? birthDate;
  final String? usualName;
  final String? surname;
  final String? deathPlace;
  final DateTime? deathDate;
  final String? deathCause;
  final String? deathDescription;
  final String? deathAdresse;
  final String? deathRegion;
  final String? deathCity;
  final String? deathCountry;
  final String? deathPostalCode;
  final String? avatarPath;
  final int? fatherId;
  final int? motherId;
  final int? actualWeddingId;
  final int? familyId;
  final int? professionId;

  Person(
      this.firstName,
      this.middleName,
      this.lastName,
      this.sex,
      this.description,
      this.email,
      this.phone,
      this.address,
      this.region,
      this.city,
      this.country,
      this.postalCode,
      this.birthPlace,
      this.birthDate,
      this.usualName,
      this.surname,
      this.deathPlace,
      this.deathDate,
      this.deathCause,
      this.deathDescription,
      this.deathAdresse,
      this.deathRegion,
      this.deathCity,
      this.deathCountry,
      this.deathPostalCode,
      this.avatarPath,
      this.fatherId,
      this.motherId,
      this.actualWeddingId,
      this.familyId,
      this.professionId)
      : createdAt = DateTime.now(),
        createdBy = 0,
        id = 0,
        lastUpdateAt = DateTime.now(),
        lastUpdatedBy = 0;

  @override
  DateTime createdAt;

  @override
  int createdBy;

  @override
  int id;

  @override
  DateTime? lastUpdateAt;

  @override
  int? lastUpdatedBy;
}
