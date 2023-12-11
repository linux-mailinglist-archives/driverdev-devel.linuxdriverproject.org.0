Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E38E980D329
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Dec 2023 18:03:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3AA9361412;
	Mon, 11 Dec 2023 17:03:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3AA9361412
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DdSDwclsUvtz; Mon, 11 Dec 2023 17:03:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F2975613E7;
	Mon, 11 Dec 2023 17:02:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F2975613E7
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 917481BF30C
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 11 Dec 2023 17:02:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 76A8481423
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 11 Dec 2023 17:02:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 76A8481423
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f9G1z0RGOBvW
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 11 Dec 2023 17:02:55 +0000 (UTC)
Received: from IND01-BMX-obe.outbound.protection.outlook.com
 (mail-bmxind01on20601.outbound.protection.outlook.com
 [IPv6:2a01:111:f403:2021::601])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 90587813F1
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 11 Dec 2023 17:02:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 90587813F1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DoIkt/UJ8D0Sm5kWlS+gwQjOhZ5WkdGGSud96nX+6ee9Snb0y3f6jBAFogfIX4G1/jbw8P40mx3hIYNJdJ/A2Vbb6jn8OiK1BiQke64z/g4CcP0tj6mlVbDfPk6bnnTrLvb7UDCMU/LJYU0I+DjD99PWWF45ItYw1kqOJWGjxWMH+/9f+2xqdv4Cq7tGSb2pbIbap2p2A+uK6i87rm1A6/6a853l6j6M+qC9JJygSeFuARzo4QBoALp1JqJRRpKwU1ODB8tyDKQSwgYBKRj9Oz/fufvpcdgJo+jb9YTvf/bPERr19bZeEEPqpkUkWhlK+WCUhOO/dqi+WqyUIFzVyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aDom6+DXsI+obLkUYo8oJFJyNBwF3aDcQq5BYtLBVds=;
 b=XgEVoA33zbNh5MlEZFED5+lwYuUaK3Dq1oBeosxIh9nWAyQlTOYpKDtlHo3NYsFPHobesEWVgGpa0PWXF5lNc8DDLQmeF/FIQCfN/ywWRGJRUE42GjAVTjAZoC30OCbzBNjdsnn6RGuvYRmgWpskvZV2eeecVPX/XCXH7NHC78zHJgzw3YLbqZAicn1uUJUpo+fE4LcOFQR4sZ701ecp9Zn0MTGYvz0BEajAoPanCMJ1QPlT7gzgCFN54j05nGOtQmF1CFn22zNBWnXBgcRZwNLRfXWGsA2dSw7m+Ks2aBw3pyW0o0oAMhg9VGXicMfoNTAsSsEau5RfMTGG8FHIBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marketleadsus.onmicrosoft.com; dmarc=pass action=none
 header.from=marketleadsus.onmicrosoft.com; dkim=pass
 header.d=marketleadsus.onmicrosoft.com; arc=none
Received: from PN0P287MB1378.INDP287.PROD.OUTLOOK.COM (2603:1096:c01:189::10)
 by PN3P287MB1997.INDP287.PROD.OUTLOOK.COM (2603:1096:c01:1d1::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.32; Mon, 11 Dec
 2023 17:02:49 +0000
Received: from PN0P287MB1378.INDP287.PROD.OUTLOOK.COM
 ([fe80::3691:13d6:2927:e2c5]) by PN0P287MB1378.INDP287.PROD.OUTLOOK.COM
 ([fe80::3691:13d6:2927:e2c5%4]) with mapi id 15.20.7068.031; Mon, 11 Dec 2023
 17:02:49 +0000
From: Ruth Morris <Ruth.Morris@MarketleadsUS.onmicrosoft.com>
To: "driverdev-devel@linuxdriverproject.org"
 <driverdev-devel@linuxdriverproject.org>
Subject: linuxdriverproject Facilities contacts update
Thread-Topic: linuxdriverproject Facilities contacts update
Thread-Index: AQHaLFPf/4FeyGsl2kWXoQRQWgeU2w==
Date: Mon, 11 Dec 2023 17:02:49 +0000
Message-ID: <97b3a607-077e-25c6-0bc7-79e6e67d9cf8@MarketleadsUS.onmicrosoft.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PN0P287MB1378:EE_|PN3P287MB1997:EE_
x-ms-office365-filtering-correlation-id: 49c98e5f-0edd-45ec-15da-08dbfa6b0184
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: s85/HwXoYICu7/wAt66On4OAgBBp8SFZtaKuQFrdWHokK7epv0cga0wkcdlnzji9+ZxcB1fefPLucBA/u5hy5E44st8Rk8KJ0pVhPTQnQXxYcKplixmQkC/7qW7pZJzhnR+bJP6xt5BQpiCaXeMCetl9rFdkgC37EnXQ0IAml0fsoHfooGedbHJJfPbInE9nQFQHq2yQfwW0wE0Q9cYycJQJ9x3wLbaQn/W8dDXI2VREslovzZ0Inovvd2QgYlK/95dzwYXMlzzDvmz18X7LDGQPupdB+nq00L50m09Fg10tniU2kCINstAb+DvIoE566O682MQ11SXHgBUukxvMVy+98Y+gK/C+yg+1kFlYHlkjYEdIACtrE4d7oO1GC3trAR4+yCCY91ZNbaPwMvNNM6tSg+QeEMuokAFGmPUMFM7wGrgvj0tSr/BvopVJ8dhfhvBDwai9LAcihZC8PA+trz+zznAwqeMzHYWdnVCCmaeg66840s2IuPTEiHk6QLhiERvaP8FtONScrEMGB/ngX/KYiWXTW3aFVBkpfz4BbRKxM3HXfRglLInsyLUlsFfR4T1eJPtbIMHDnF7PcHzwgvwEw+xwi1ca7bFNiheVsSiP6u0CLf57+cXLLVLCuYHW3i7pVqdYLV60IwK5l7dp4Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PN0P287MB1378.INDP287.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(34096005)(136003)(39850400004)(366004)(396003)(448600002)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(53546011)(6512007)(2616005)(6486002)(38610400001)(71200400001)(6506007)(586005)(76116006)(41300700001)(15650500001)(83380400001)(5660300002)(2906002)(91956017)(64756008)(66446008)(66476007)(66556008)(66946007)(6916009)(8676002)(8936002)(122000001)(38100700002)(3480700007)(38070700009)(86362001)(31696002)(31686004)(45980500001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T2ZLSmgrRGZJQmljcS9Damo1c3FaUHFTNkFMUzlPcmJZd3hDSXhGeDBHSXlY?=
 =?utf-8?B?bU1mVEErRlJQZjBoTjM3UWNyZy92dkhMdDd5S0kvY0kvSGRzZFpWQzloV1N6?=
 =?utf-8?B?MC96VTlTTWVjb1AxVHJnbDc1YXJDK2xSb0RldFRSRVhhaFIydnUzandEYXhu?=
 =?utf-8?B?djVnNDRKQjdndmxtRWQxMUlKOFJ0SVhZbTU2QlZOVEJ6cDhuZ0NsbS9lUUNE?=
 =?utf-8?B?MlJpaVlKek9UVzNXTW1uN2JBdVVzcnMyZ3lJeTUzbjVpNFpBSks0ckZwZ2hZ?=
 =?utf-8?B?dmFoZVZ3MGxUcmhVVDJDT0JzcFJTNEhLRmF0aU13OGhEQjZJdGhON2NsZnNQ?=
 =?utf-8?B?d1ZvK3RTRlBkcFRBQ3lIY1ZaYWxBdnlRU0RUSHBWV0kwNHM3Tk1XTE1lWFBy?=
 =?utf-8?B?aXdtbHhudWdDeklBekxQd1hCeGxjZFJqM3krR2hldnVZYklwN0lnbmZ5WU9Y?=
 =?utf-8?B?NDI5d2hET2wxNUsrd3ZFSnJTU2laVUdaK2FZVHd0cEpNSHlOYkxzcWxQV2xN?=
 =?utf-8?B?ejV5V3JvTlE2MHNCYk0vdnlmWHB6K0hJSEhRbjRjcGdEcWxlQXF5cDNIZ2kw?=
 =?utf-8?B?djJNUHVSS2hxcEVZVXhQUUlmdHU3amJkQnk2RWVTbWNnOGJXTEZzNUFlVEZE?=
 =?utf-8?B?aHZHaDRvRldtdHRGR3RMZUd1TEFUZjd0V01NdUhnSzhwRE41WDlhdmxoamxE?=
 =?utf-8?B?OU5YeEJtbytPZUQzTjduM3dOLzVTRy9HMU13SlV5N2ZQelRhOGRpZjdkdlp6?=
 =?utf-8?B?Y05scmQvZUFGbzloUXQ1WUltaHVJdUFiS01NQkovSGtqZEIreHF3SnFTZS9R?=
 =?utf-8?B?bkJva2wxdU83UE1pZGFDWmpQSllrdjdSYStDQytVQXgxNEhveVlidTZ6WU5o?=
 =?utf-8?B?TXRtRnQ4dEVBWDMvYlBjYmlsZ0M1UkFMMjl6VlJRdFc3cVZHdmFvRnduUFg0?=
 =?utf-8?B?TFU0d3I2Nlc5cUNHZXkwcjAyUDVndDdCWEdBM2s2N0E0bE44RTVXUHh4YldM?=
 =?utf-8?B?UlJ4T3VHakFrWDhFNThSaU5tTVE3NjIycXdRUTVNRisrajJ5Y1BBMHExNEl1?=
 =?utf-8?B?NnRZOURUd0U5VUFNSnFhSzdLWkNVbm92Vjd6eXRMVHVqZStkNGVpM080Z2VB?=
 =?utf-8?B?RU9kRW02cXZFMHZiMVNMZW9hQ2h6ZGcvVkxqMGRQMkdiOGZaSDVzMVV3d3Ni?=
 =?utf-8?B?U2FQNWF1UDYyN3Y1WG5LczAwNHNONlR5a0J2ZzJwQy9MeUdvWmU2RUVIWnps?=
 =?utf-8?B?eUhhVm5NRXlCMkJ5UTc5T0dMOVNJbGlYRmcrWkEyNlp2TVpxWUZTbXo3YXQ2?=
 =?utf-8?B?aVdHWEgrZnQ2ajlBN09sdUt1VzhVTW1Za1NKRllERHdFcmd1bEt1NmQvZy9W?=
 =?utf-8?B?RWRwbzh4V0h4ZmoyVUxaOUF4YndobXJFSWl5aHBuT2xXQSt3eElueUhoREo3?=
 =?utf-8?B?V2NOUjJBbWxVM09TZXlZdndiNEs5NW5XdzJkOHAzZ1JKdlNXSTZpSytFNEhw?=
 =?utf-8?B?QllKclZGVHZSSHJtcE1FWllWOGJKd3MxQnRCMUI1eVhpcTg1UkRFUTRveFZo?=
 =?utf-8?B?S0FTOUdTVUZkNWlKNVBjQ29JZzEyYkM2TmFwR0kxRkFLbUpublNVSWVQRlBl?=
 =?utf-8?B?RnhGTytkOFFCd1R2WkpIMHJ0VHc5d1NPd0VWWHRpNHhLSWFiajVMalhkaWdW?=
 =?utf-8?B?MFVORytVVFZyVUJVTlBiNWJ5bGtkT0YxQlVENndCK09LQ2VUSjJiSUxyRWJy?=
 =?utf-8?B?ZnN5ZzQ4QTAzaXBnU3llRk85Y3JsMEcwbFF6YVJiN28wSTMyWEZlMXpuVjRs?=
 =?utf-8?B?d3lpVzlvWHV1WlhCcFQvb3ZFT3RuVENxKzAvVm5PM05FZWk3WXBaTDlaYWpM?=
 =?utf-8?B?R0kxREFGUjdMd2RqenhCcnBkSE9EdXZpMEJQbHplQVJ5K2VHeDNmWTczdjNF?=
 =?utf-8?B?bmdCR21KUzJOQ1I2eC9JV0FnbDB5TEwwS05Ra0tYNzBjMkszdDAxZ3ZZRG1C?=
 =?utf-8?B?NWM4d1VOMk9tTldBSytldzM2dEkwR2c2NmluYmFQQllVWmx0V0krMDFmZVpu?=
 =?utf-8?B?ckg0RStZQjZjeE9UcmhGTXc2TUZwcjdyT2lvWncwM3FoK2FoTnFrdXJGbWlm?=
 =?utf-8?B?K0xEdUlpRzdjb3hBM21ody9IVmRvOURCbjVwektKUG9qS3haNlJEMUVveTlZ?=
 =?utf-8?B?VFFFSVZLZGlDbUdaYjZYTndxL0RhU2owYk1KZHgxT2VUNkx0UGlZbGtHNGJh?=
 =?utf-8?Q?mFIudUl0IYLV+HueXgJvuJ8cCUbB4nezAnBttsV9zg=3D?=
Content-ID: <C0111234BE79804DAF08FC235F40DB7A@INDP287.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-OriginatorOrg: MarketleadsUS.onmicrosoft.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PN0P287MB1378.INDP287.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 49c98e5f-0edd-45ec-15da-08dbfa6b0184
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2023 17:02:49.6819 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 49769ad5-8328-413f-8e5d-952dfb6b0052
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0ZN4nNTjqvLU1NssEyZjDP8nVUXhEn+PNh6UpWgRqNxefBi/kLJML6tRdHAnXe+xvC4oEEARbNGsHEXv/qo/F81U5uxlcKTdAodPYFsBo8hlSqXOZ3/lDyyiTYkzIj4Tsl+cp9psXypJK86151tpdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN3P287MB1997
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none
 header.from=MarketleadsUS.onmicrosoft.com;
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

I emailed you about our Facilities management contacts database a couple 
of days ago.

We can grant you access to our updated business database with titles 
such as Facilities Director, Maintenance Director, Health and safety, 
Workplace Manager, Building Manager, Plant Director etc.

I wanted to circle back and see if you are interested to send me your 
target job titles and industries so we can send you more information.

Regards,
Ruth

Ruth Morris | Marketing Consultant

On 03-05-2023 11:43, Emma Conner wrote:

Hi,

Would you be interested in an updated Facilities Management email list?

Facilities Director
Maintenance Director
Health and safety
Workplace Manager
Building Manager
Plant Director
Director Safety and Security
Head of Real Estate and Facilities
Facilities Engineer
Site Manager
Business Continuity Manager etc.

We can provide contacts of various job titles from several levels - for 
e.g.: C Suit, VPs, Directors, Managers and staff level contacts

We can customize your list accordingly for any other requirements that 
you have.

Let us know the job titles and your target audience so we can process 
and send the counts.

Regards,
Ruth

Ruth Morris | Marketing Consultant

Reply only opt-out in the subject line to remove from the mailing list.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
