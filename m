Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A85DB814586
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 Dec 2023 11:28:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1BE9082D7C;
	Fri, 15 Dec 2023 10:28:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1BE9082D7C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BVobQ3MvfnxL; Fri, 15 Dec 2023 10:28:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3597829B6;
	Fri, 15 Dec 2023 10:28:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3597829B6
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 34A3A1BF418
 for <devel@linuxdriverproject.org>; Fri, 15 Dec 2023 10:28:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0E0BD60D52
 for <devel@linuxdriverproject.org>; Fri, 15 Dec 2023 10:28:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E0BD60D52
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jE9eSKIGoti2 for <devel@linuxdriverproject.org>;
 Fri, 15 Dec 2023 10:28:20 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 15 Dec 2023 10:28:20 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A72960BA8
Received: from khi.mrd-esa1.in (mrdesa1.ptcl.net [59.103.239.93])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0A72960BA8
 for <devel@driverdev.osuosl.org>; Fri, 15 Dec 2023 10:28:19 +0000 (UTC)
Message-Id: <298419$3p00u@khi.mrd-esa1.in>
X-IPAS-Result: =?us-ascii?q?A2EmTQAvKHxl/+fRJidaHQEBAQEJARIBBQUBQAmBRgIYA?=
 =?us-ascii?q?QEBAYIFh0KRY4Ilm32BXg8BAQEBAQEBAQELQgQBAYUGhzQnOQUNAQIEAQEBA?=
 =?us-ascii?q?QMCAwEBAQEBAQgBAQEFAQEBAQEBBgMBAQECgRmFLwwIMoI/g34BAQcBAQUnV?=
 =?us-ascii?q?hUTDQImAkkWRwEBAYMOAQGBZAEBMq9dgTIaZ4RfhTundhSECy4BiBoBgVCEF?=
 =?us-ascii?q?YsRiRQVglMEg2KCKYMNB4Yjg3OOCgcCBW9GcBsDBwN/DysHBDAiBgkULSMGU?=
 =?us-ascii?q?AQoIQkTEkBtgkQKgQE/Dw4Rgj5eNhlIgloVDDRKdRBCF4ERbhsSHjcREBcNA?=
 =?us-ascii?q?wh0HQIRIzwDBQMEMwoSDQshBVYDRQZJCwMCGgUDAwSBMAUNHgIQLCcDAxJJA?=
 =?us-ascii?q?hAUAzsDAwYDCjEDMIEZDE8DaR8yCTwPDBsCOQ0nIwIsVgUQAhYDJBo2EQkLK?=
 =?us-ascii?q?AMsBjgCEwwGBgleJhYJBCcDCAQDVAMjdxEDBAwDFwcLBzkGBQgHEAQIGQMzE?=
 =?us-ascii?q?R03CQN4PTUIDBtECEcdEqYCgSmBGBEIQQ5ES5IsDIN7i1aCGqBTB5dCilqbI?=
 =?us-ascii?q?AOSOIYrkhogom2HSYF+gnIagRxRGYgThigWk1yBJAIHCwEBAwmJFA6BQAEB?=
IronPort-PHdr: A9a23:YZIixB996o8sGf9uWa67ngc9DxPPW53KNwIYoqAql6hJOvz6uci4b
 AqFva8m1QWBdL6YwswHotKViZyoYXYH75eFvSJKW713fDhBt/8rmRc9CtWOE0zxIa2iRSU7G
 MNfSA0tpCnjYgBaF8nkelLdvGC54yIMFRXjLwp1Ifn+FpLPg8it2O2+5Z7ebx9WiDahf79+I
 wi6oRvMvcQKnIVuLbo8xRTOrnZUYepawn9mK0yOlBjm/Mew+5Bj8yVUu/0/8sNLTLv3caclQ
 7FGFToqK2866tHluhnFVguP+2ATUn4KnRpSAgjK9w/1U5HsuSbnrOV92S2aPcrrTbAoXDmp8
 qlmRAP0hCoBKjU2933ah8JsgK5GuR6tuwFzyJPQbI2INPdye6XQds4YS2VcRMZcTzBODYyzY
 YUSEeQPPfhVoYfnp1UUtha+GRCsCP/zxjNUmnP736s32PkhHwHc2wwgGsoDvXPPrNrvLacSU
 Pu6wLPSwjXDavNZxyry5ZPSfRA5pfGAR65/cc3UyUU1DwPFjUydpIr4NDyayuoDqXKU7/Z8V
 e2xkW4nrRl8rDavy8oyloXEmoYYxk3K+yt5zos4KtK1RkF6bNO4HpVduTyXOYR3T888TWxlu
 Dg2x6MGtJC7YCUHzJUqyh3fZfGBboOG4QrjWf6fLDp8nn5odrGyiwys/US8zuDwTNe43VhXo
 idDj9LBqHQN1wHI6sibVPR95Fqv2TeO1g/N8uxIPEQ5mbfdJpU82LA/jIATvl7GHiLunUX2i
 7KZeVs89+iz7uTnfq3mppiBN49okg3+Mrohmsi4AekgLAYAQnKX+fym273l5EH5WK9FgeE3k
 qnXsZDVOd4XqbK+Aw9QyIoj9xi+Ay+n0NQeg3YHMEpIdRyDgoTzNVzDI+r0Aemjj1moijtn2
 f7LMqD5DpXINHfDkbPhfbhn605bzQo+1ctf6IhNCrEAO/3/QFX+tNzdDhAnLgO52PzoCM151
 o8ERW2PBaqZPLnKsV+L/u4vJfKDa5cPuDnhM/gl++LujXghlFMAeaSlxYEXZ2ygHvR6P0WZZ
 mLhgtMAEWcMowo/Q/Xmh0eYUT5WfnqyXLwz5is9CI24CYfOXYStgL2a3CenBZ1afGFGClaCE
 XfybYqLRukDZziPLcN7lTwET7ehR5c71R6yrA/616ZnLu3M9yIFsJLszsZ65+vclREz8zx7E
 d+Q03+CT25qhGMEXTw2075loUx71FiD1bJ0g/tCFdxc//9JSBs1NYbAz+xmDND/QgbBftaPS
 Fa7TdSqGDQxQcwszN8PeUlwAMuijh/d0CqwGbMVlKKEBIYy8q3C23j9PcF9y2zJ1KU5lVkpX
 tNPNXG6hq547wXTAZDGk1mEmKm0a6QRxzDN9GidwmqUpk1YUxB/Ub/DXX8BYkvat9P55lnNT
 7O2E7QoLhNBydKeKqtNctDmkEtJROn9N9TaeG++hn2wBReWxrySdorlZnsS3DvHBEgDiAAT4
 HGGNRM6Biu7pGLeFjNuRhrTZBam8uR48yPmShBtlxqGMRc4ipKu5hdTg/2GDfELlPpQoy44q
 j8yFVa40t7+AsKE4QFmeeNEYoVu2lpf0XPlsFkpOpWlLqpvgloZWwJ+oU70kR5wD9MUwuYwq
 3Z/mBF7MKOSllpBcj6U9ZnoPvvcLWy05BP5OP2e4U3XzNvDovRH0/8/sVi25VzBKw==
IronPort-Data: A9a23:Noi+LK9p1DGh71u6BLy5DrUDLXmTJUtcMsCJ2f8bNWPcYEJGY0x3m
 DEdCD2DP/eNNmL3ftAka4y+pk0PvJbWm9RlSAZvqCwxFiIbosfsO4+Ufxz6V8+wwmwvb67FA
 +E2MISowBUcFyeEzvuVGuG96yE6j8lkf5KkYAL+EnkZqTRMFmF51XqPp8Zj2tQz2ILgXlvU0
 T/Pi5S31GGNimYc3l08tvrrRCNH5JwebxtB4zTSzdgS1LPvvyF94KA3fMldHFOhKmVgJdNWc
 s6YpF2PEsE1yD92Yj+tuu6TnkTn2dc+NyDW4pZdc/DKbhSvOkXee0v0XRYRQR4/ttmHozx+4
 O90nM2QTDYMBYnRqN02VBNyT3pEA7ITrdcrIVDn2SCS53H9NWPlxbB2BUo3M4wTvO1wBCdS6
 pT0KhhWP1bY16TsmOP9ELI17iggBJCD0Ic3oXh5zDufBPYjTJzrSr3Oo9Rf2XEohaiiGN6FN
 pRFOGc/BPjGSwJpN20MLZM4oNW5r0nkMGZlmlWZpbVitgA/yyQ0itABKuH9ft2MWNUQl1yd4
 2HL5WL0BjkeNceD0nyE9Hy2j+PClC+9X5gdfJW08/dnhlKSwGE7FhIbTx24rOO/h0r4XMhQQ
 2QQ+ywzve03+UCqR/HjUBCi5n2JpBgRX5xXCeJSwAeA1qbZ/S6HCWUeCD1MctorsIkxXzNC/
 lOEgd7tLTB1saOYU36Q6PGTti61IixTKnUNDQcNSRAMptXuvow3phvLVd8mCLSyjND+BXf32
 T/ihHJm3uVL0ZRQj/rmpQidxTinr8KWQAQt6AvTA3mv6AhReoO/aIHu71XHq/9dRK7FElPft
 ikNwI3Dtr9VSMzRmnDITehSRvTx66uLOzaH3wUzT5AJ/DOi9ni/cIVa7T1yKUsvOcEBERezO
 BaD4V8Lv8cCZirzMul3Od67UcsnyPbiT4j4VvbXRsRDeJd8MgmK4GdneCa4hTi0wBBwy/pna
 M3DKJ/qFHAaAqN9wzGrHeVA0aUv3QggyHncSNb9wgjh2Kf2TGecT7sAKkqOdbAk/rmFvlzP+
 tJPL9aY1hBaDuvybSqNrYEVIngPJHk/Q5/zos1TMOWEJ2JOQjl4W6eNm+h5JNE7w/4Tn/nI/
 3GzQBME01egiXPVdy2UZ2psZfXpUIo5pG9TFXZ0ZAbwhyJ4Odnysv1CMYYrb7d57+N+keRwU
 fNYJt+oHPlVRTmB/TkBK5DgxKQ4LE373V7UZHL6PWZnI9hpHBPW4cD9fFHj7i1VC3WtndUzu
 bKtkAXWXdwKWmxKVp6POKrzlQjp4iVBxLs0R0HPOtNSfVyx9dc3IjT+nNcpLtsDJFPFyyfc3
 hv+KU1A/LmV/9VuqIaU3vvU6Z2oEO1uD0hHEG/FsLmsNyPy4Ge5zoIGVuuUOznAPEv+oKj+b
 +8EnrTyYaNb2V1E44M5H7pnxudgvYLh+u4Lwl85Ei3jZFOkB7V8L3yM0MVDu6ELzbhc0SPvA
 hvQp5wLfLqIJIb+HVgdYQcgZ+WHkP4ZlyPOru44Jkjh7TRf876GXUhIeROB4AQEdOIqbcZ6h
 OggpIsN5gqzzxcvO9eCyy9Z+n6QbWYNVag8v4oyD4vqhgcxjFtPCaEwEQetsdfUO5MWahhse
 GTN7Ebfu4lhKoP5WyJbPRDwMSB13/ziZDgiIJQ+y5hlVzYLajLbHPGczNjvcjlo8w==
IronPort-HdrOrdr: A9a23:BXOk0qxCbjrgAgp+Xqe4KrPwOr1zdoMgy1knxilNoNJuEvBxXq
 iV8MjzsiWYtN9xYhodcL+7Scq9qB/nlKKdgrN6AV7KZmCPhILPFvAB0WKI+VLd8kPFmNK1rp
 0QFpRDNA==
X-Talos-CUID: 9a23:6NV+Om/JROx86MYnKCeVv3QtM5EFd0z491PNE3aTDmxDFOavd0DFrQ==
X-Talos-MUID: 9a23:v/Y7gQnye1Qli+mUXH3Ddnp9EspS+IGvDnw/gLw2oIrfCB53NzeC2WE=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.04,278,1695668400"; 
   d="scan'208";a="3964958"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from unknown (HELO TS.pan-pacific.com.tw) ([39.38.209.231])
 by khi.mrd-esa1.in with ESMTP; 15 Dec 2023 15:20:59 +0500
MIME-Version: 1.0
Content-Description: Mail message body
Subject: I can explain
To: "ken385l710sd6215@sta.nir.jp" <saqib.ahmed@apl.com.pk>
From: <saqib.ahmed@apl.com.pk>
Date: Fri, 15 Dec 2023 18:20:51 +0800
X-Priority: 1 (High)
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
Reply-To: lamibello@naver.com, "<"@osuosl.org
Cc: eisar.ismail@ptcl.net.pk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

G r e e t i n g s to you and your family, I will like to share this little detail with you that would be of mutual benefit to you and me. There's a DRC Deposit Release Case which is open in a Security company v a u l t because the owner is now deceased a n d there's no clear n e x t of k-in to i n h e r i t or clear the deposit.

As a stock consultant working with the Security Company, I noticed that the deposit did not have proper details registered. I propose that we work together to clear the deposit as I am very sure it is a deposit with very high value because of the name of the depositor.

This is totally 100% r i s k-free and would be mutually beneficial. That's all the detail I can provide for now until I receive your positive r e p l y and I can explain further.

Regards,
Mr. Alan Lambert
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
