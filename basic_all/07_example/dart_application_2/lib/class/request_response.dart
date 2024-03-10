
import 'dart:convert';

import 'package:dart_application_2/class/capital_info.dart';
import 'package:dart_application_2/class/car.dart';
import 'package:dart_application_2/class/coat_of_arms.dart';
import 'package:dart_application_2/class/curremcies.dart';
import 'package:dart_application_2/class/demonyms.dart';
import 'package:dart_application_2/class/flags.dart';
import 'package:dart_application_2/class/gini.dart';
import 'package:dart_application_2/class/idd.dart';
import 'package:dart_application_2/class/languages.dart';
import 'package:dart_application_2/class/mane.dart';
import 'package:dart_application_2/class/maps.dart';
import 'package:dart_application_2/class/translation.dart';

List<RequestResponse> requestResponseFromJson(String str) => List<RequestResponse>.from(json.decode(str).map((x) => RequestResponse.fromJson(x)));

String requestResponseToJson(List<RequestResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RequestResponse {
    Name? name;
    List<String>? tld;
    String? cca2;
    String? ccn3;
    String? cca3;
    String? cioc;
    bool? independent;
    String? status;
    bool? unMember;
    Currencies? currencies;
    Idd? idd;
    List<String>? capital;
    List<String>? altSpellings;
    String? region;
    String? subregion;
    Languages? languages;
    Map<String, Translation>? translations;
    List<double>? latlng;
    bool? landlocked;
    List<String>? borders;
    double? area;
    Demonyms? demonyms;
    String? flag;
    Maps? maps;
    int? population;
    Gini? gini;
    String? fifa;
    Car? car;
    List<String>? timezones;
    List<String>? continents;
    Flags? flags;
    CoatOfArms? coatOfArms;
    String? startOfWeek;
    CapitalInfo? capitalInfo;

    RequestResponse({
        this.name,
        this.tld,
        this.cca2,
        this.ccn3,
        this.cca3,
        this.cioc,
        this.independent,
        this.status,
        this.unMember,
        this.currencies,
        this.idd,
        this.capital,
        this.altSpellings,
        this.region,
        this.subregion,
        this.languages,
        this.translations,
        this.latlng,
        this.landlocked,
        this.borders,
        this.area,
        this.demonyms,
        this.flag,
        this.maps,
        this.population,
        this.gini,
        this.fifa,
        this.car,
        this.timezones,
        this.continents,
        this.flags,
        this.coatOfArms,
        this.startOfWeek,
        this.capitalInfo,
    });

    factory RequestResponse.fromJson(Map<String, dynamic> json) => RequestResponse(
        name: json["name"] == null ? null : Name.fromJson(json["name"]),
        tld: json["tld"] == null ? [] : List<String>.from(json["tld"]!.map((x) => x)),
        cca2: json["cca2"],
        ccn3: json["ccn3"],
        cca3: json["cca3"],
        cioc: json["cioc"],
        independent: json["independent"],
        status: json["status"],
        unMember: json["unMember"],
        currencies: json["currencies"] == null ? null : Currencies.fromJson(json["currencies"]),
        idd: json["idd"] == null ? null : Idd.fromJson(json["idd"]),
        capital: json["capital"] == null ? [] : List<String>.from(json["capital"]!.map((x) => x)),
        altSpellings: json["altSpellings"] == null ? [] : List<String>.from(json["altSpellings"]!.map((x) => x)),
        region: json["region"],
        subregion: json["subregion"],
        languages: json["languages"] == null ? null : Languages.fromJson(json["languages"]),
        translations: Map.from(json["translations"]!).map((k, v) => MapEntry<String, Translation>(k, Translation.fromJson(v))),
        latlng: json["latlng"] == null ? [] : List<double>.from(json["latlng"]!.map((x) => x)),
        landlocked: json["landlocked"],
        borders: json["borders"] == null ? [] : List<String>.from(json["borders"]!.map((x) => x)),
        area: json["area"],
        demonyms: json["demonyms"] == null ? null : Demonyms.fromJson(json["demonyms"]),
        flag: json["flag"],
        maps: json["maps"] == null ? null : Maps.fromJson(json["maps"]),
        population: json["population"],
        gini: json["gini"] == null ? null : Gini.fromJson(json["gini"]),
        fifa: json["fifa"],
        car: json["car"] == null ? null : Car.fromJson(json["car"]),
        timezones: json["timezones"] == null ? [] : List<String>.from(json["timezones"]!.map((x) => x)),
        continents: json["continents"] == null ? [] : List<String>.from(json["continents"]!.map((x) => x)),
        flags: json["flags"] == null ? null : Flags.fromJson(json["flags"]),
        coatOfArms: json["coatOfArms"] == null ? null : CoatOfArms.fromJson(json["coatOfArms"]),
        startOfWeek: json["startOfWeek"],
        capitalInfo: json["capitalInfo"] == null ? null : CapitalInfo.fromJson(json["capitalInfo"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name?.toJson(),
        "tld": tld == null ? [] : List<dynamic>.from(tld!.map((x) => x)),
        "cca2": cca2,
        "ccn3": ccn3,
        "cca3": cca3,
        "cioc": cioc,
        "independent": independent,
        "status": status,
        "unMember": unMember,
        "currencies": currencies?.toJson(),
        "idd": idd?.toJson(),
        "capital": capital == null ? [] : List<dynamic>.from(capital!.map((x) => x)),
        "altSpellings": altSpellings == null ? [] : List<dynamic>.from(altSpellings!.map((x) => x)),
        "region": region,
        "subregion": subregion,
        "languages": languages?.toJson(),
        "translations": Map.from(translations!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "latlng": latlng == null ? [] : List<dynamic>.from(latlng!.map((x) => x)),
        "landlocked": landlocked,
        "borders": borders == null ? [] : List<dynamic>.from(borders!.map((x) => x)),
        "area": area,
        "demonyms": demonyms?.toJson(),
        "flag": flag,
        "maps": maps?.toJson(),
        "population": population,
        "gini": gini?.toJson(),
        "fifa": fifa,
        "car": car?.toJson(),
        "timezones": timezones == null ? [] : List<dynamic>.from(timezones!.map((x) => x)),
        "continents": continents == null ? [] : List<dynamic>.from(continents!.map((x) => x)),
        "flags": flags?.toJson(),
        "coatOfArms": coatOfArms?.toJson(),
        "startOfWeek": startOfWeek,
        "capitalInfo": capitalInfo?.toJson(),
    };
}