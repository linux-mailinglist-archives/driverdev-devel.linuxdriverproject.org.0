Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 647175A198
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 18:58:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 414CF88296;
	Fri, 28 Jun 2019 16:58:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oMbKY6qX-FcP; Fri, 28 Jun 2019 16:58:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3C5C38827E;
	Fri, 28 Jun 2019 16:58:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ABD441BF36D
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 16:57:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A8EE886709
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 16:57:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vcOZbbcRoPMD for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 16:57:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 258228651C
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 16:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561741026;
 bh=jQN9uQnWE9q4sKyUsBcJz7asKRCZXs1lpMEm+3SXt6o=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=Dc8KbwCSHaRPaaxaXCJ8vFOvc0vUxw/uLOo0r9uevGXKc8nkElFvxKTiiuygEzsub
 OUEtLTJ0mVeQucXY/I5Faqe9oT0ss6h6zlwoAc3yvixsZXfC5AoBzW3iKDaaKyNBQ8
 g7SaBBb2NQvq5SqmOqXlmeTq5fKO4Krs6efv9nSo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.111]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MKsjH-1hzoc83eFZ-00LJE2; Fri, 28
 Jun 2019 18:57:05 +0200
Subject: Re: [PATCH 00/31] staging: bcm2835-camera: Improvements
To: Hans Verkuil <hverkuil@xs4all.nl>, Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
 <f4492041-2587-eedb-8ae5-ae610e90fde2@xs4all.nl>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <24265b85-a12a-7a46-91d1-f20f5a133f8b@gmx.net>
Date: Fri, 28 Jun 2019 18:57:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <f4492041-2587-eedb-8ae5-ae610e90fde2@xs4all.nl>
Content-Language: en-US
X-Provags-ID: V03:K1:Yf35tDsGnOPt9yOS+/i7y5kuy5UmZ0auV8VpO3ff8YYineCkeCX
 DlXAgpLLJ9O8bmVc5Y4gWKl0ekRjXQsqs4ztlT+DI3YMdr66SEa6bb45GmgqmgvANzHtZPB
 QFVJ3PKESD6efl/qNnoaJTlBNwgnPKWdCtpc23q0/iv1/Y1fmGPA1a3WTw/UFosGwrKVjjJ
 sEbwhwDZv/pSjCBqE0+OQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:Dapqhu54Jaw=:U6pDR0Fi9RH/1KKgQh6drE
 S+LAHg58cJ8llRjzjwMoF+bXqUtyEgS14EpPu/h/FW7IiOxNioDJlc6PbzwvSeye1wf+RFZNg
 ui/nMO9/hmHgW5Kae+/ZhMaAZoPWrtqjNzdNBybu389jaYvgXZUBqUHdwv5M8AEnzpfYvG9AZ
 6PHg23v0tBLOXJKO0oxsUak78Vm0Dn3UZyAmVQLvFbV1q73tSTRK4l3v59XPMyR3h120QZhCR
 YP9jBNL4KrsDFEo1AYYtq3DcWPJDor6xN3Yvr9Pbi+UCkK8RJRw0O0IULjDqTyuCWlZYawl8T
 lxts5t6vrgXgS8SAsLwBgZ6oV4M6dxP3nn8c4lw27H0RXTx7gPi1P1YsVqkT0cShgvuSnY0lc
 63XFwngzOmv0LvhlXXm6LNJe1EXAfBXOsPCbB0gAlPicIZJSE4yjrGTQR1Y3I2rgQut0JmDUa
 qYSsW+RPLE5AEOc4Wnr/JtzA7bh3f15rPhTNzIo4VVEhDeoizBN5ADXgPHu6r3umKe+qVYwJp
 l87FiFLZWVfqAYYWNaynPPzvpP/NV4Fu/RUUyAvvB+thw5XUHOVodKoc6LhH/+uwVkaw2tNHo
 J1DXBt2dFG1wPHmJsdu0N/6qyOZ9TSuZmt5K/oLZCRheVXLGuyXK5WipF23XJYo+v+BRmCGSn
 MXqNPH739r3ZXgkatdohpqETLyzYyWOhec9NY0zlM9Z+8qlrmigLCLvRJGextapdwUXy0aIkg
 MAw/Gn5n1Fp6RhT8ksb7p8UZmw7jIpeCXU/HzWbquj3t2P61bPOLLi39bAAR0uw3UHxp6Tvb7
 5Yxt+x2LIyn0sDzHGDK/9w1MiRJv68gkOYFfmY8WOyIVMcN/+Vp9CJn7nQYQ+JJmMBLT2q53Y
 E2JYYe4WzpiD1YYYLujjwB2HLMWcm1XH1YLCgXHpfbGGMt8Af3K0nbEfbldStCLyti9k1Okh3
 eXl3i9JPZv4hwLczqL0SfQBQJGEe73s8r8DAOl1cxrn2aD6nPDezNzXeGN7mQS1IiAmNhEYiA
 zaklv1zqrkaESlbFuvLssaI1D/BSvDUEU1a3wDKdVAqqVMd3kXF4W7B0/oSk/QqOLCj8l85IG
 5vQMMPeha1YlD4=
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgSGFucywKCkFtIDI4LjA2LjE5IHVtIDEwOjA2IHNjaHJpZWIgSGFucyBWZXJrdWlsOgo+IEhp
IFN0ZWZhbiwKPgo+IE9uIDYvMjcvMTkgODo1NSBQTSwgU3RlZmFuIFdhaHJlbiB3cm90ZToKPj4g
VGhpcyBpcyBhbiBhdHRlbXB0IHRvIGhlbHAgRGF2ZSBTdGV2ZW5zb24gdG8gZ2V0IGFsbCB0aGUg
Zml4ZXMgYW5kCj4+IGltcHJvdmVtZW50cyBvZiB0aGUgYmNtMjgzNS1jYW1lcmEgZHJpdmVyIGlu
dG8gbWFpbmxpbmUuCj4+Cj4+IE1vc3RseSBpIG9ubHkgcG9saXNoZWQgdGhlIGNvbW1pdCBsb2dz
IGZvciB1cHN0cmVhbS4KPj4KPj4gVGhlIHNlcmllcyBiYXNlZCBvbiB0aGUgbGF0ZXN0IGJ1Z2Zp
eCBWMiBvZiBzdGFnaW5nOiBiY20yODM1LWNhbWVyYTogUmVzdG89Cj4+IHJlCj4+IHJldHVybiBi
ZWhhdmlvciBvZiBjdHJsX3NldF9iaXRyYXRlKCkuCj4gVGhhbmsgeW91IGZvciB3b3JraW5nIG9u
IHRoaXMuCj4KPiBUaHJlZSBoaWdoLWxldmVsIHF1ZXN0aW9uczoKPgo+IDEpIENhbiB5b3UgcG9z
dCB0aGUgb3V0cHV0IG9mICd2NGwyLWNvbXBsaWFuY2UgLXMnIHVzaW5nIHRoZSBsYXRlc3QgdjRs
Mi1jb21wbGlhbmNlCj4gICAgZnJvbSBodHRwczovL2dpdC5saW51eHR2Lm9yZy92NGwtdXRpbHMu
Z2l0ID8gIEknbSBpbnRlcmVzdGVkIHRvIHNlZSB3aGF0IHRoZQo+ICAgIHN0YXR1cyBpcyBvZiB0
aGlzIGRyaXZlciB3LnIudC4gdGhlIGNvbXBsaWFuY2UgdGVzdHMuCgpCZWZvcmUgdGhpcyBzZXJp
ZXMgKFJhc3BiZXJyeSBQaSAzLCBDYW1lcmEgMS4zLCBMaW51eAo1LjIuMC1yYzMtbmV4dC0yMDE5
MDYwNywgbXVsdGlfdjdfZGVmY29uZmlnKToKCnY0bDItY29tcGxpYW5jZSBTSEE6IGIxNmY5ZTk0
NWQ3NGFhNTUyYWJkZDZmODczODIxY2I3N2ZhYWYxM2EsIDMyIGJpdHMKCkNvbXBsaWFuY2UgdGVz
dCBmb3IgYm0yODM1IG1tYWwgZGV2aWNlIC9kZXYvdmlkZW8wOgoKRHJpdmVyIEluZm86CsKgwqDC
oCBEcml2ZXIgbmFtZcKgwqDCoMKgwqAgOiBibTI4MzUgbW1hbArCoMKgwqAgQ2FyZCB0eXBlwqDC
oMKgwqDCoMKgwqAgOiBtbWFsIHNlcnZpY2UgMTYuMQrCoMKgwqAgQnVzIGluZm/CoMKgwqDCoMKg
wqDCoMKgIDogcGxhdGZvcm06YmNtMjgzNS12NGwyCsKgwqDCoCBEcml2ZXIgdmVyc2lvbsKgwqAg
OiA1LjIuMArCoMKgwqAgQ2FwYWJpbGl0aWVzwqDCoMKgwqAgOiAweDg1MjAwMDA1CsKgwqDCoCDC
oMKgwqAgVmlkZW8gQ2FwdHVyZQrCoMKgwqAgwqDCoMKgIFZpZGVvIE92ZXJsYXkKwqDCoMKgIMKg
wqDCoCBSZWFkL1dyaXRlCsKgwqDCoCDCoMKgwqAgU3RyZWFtaW5nCsKgwqDCoCDCoMKgwqAgRXh0
ZW5kZWQgUGl4IEZvcm1hdArCoMKgwqAgwqDCoMKgIERldmljZSBDYXBhYmlsaXRpZXMKwqDCoMKg
IERldmljZSBDYXBzwqDCoMKgwqDCoCA6IDB4MDUyMDAwMDUKwqDCoMKgIMKgwqDCoCBWaWRlbyBD
YXB0dXJlCsKgwqDCoCDCoMKgwqAgVmlkZW8gT3ZlcmxheQrCoMKgwqAgwqDCoMKgIFJlYWQvV3Jp
dGUKwqDCoMKgIMKgwqDCoCBTdHJlYW1pbmcKwqDCoMKgIMKgwqDCoCBFeHRlbmRlZCBQaXggRm9y
bWF0CgpSZXF1aXJlZCBpb2N0bHM6CsKgwqDCoCB0ZXN0IFZJRElPQ19RVUVSWUNBUDogT0sKCkFs
bG93IGZvciBtdWx0aXBsZSBvcGVuczoKwqDCoMKgIHRlc3Qgc2Vjb25kIC9kZXYvdmlkZW8wIG9w
ZW46IE9LCsKgwqDCoCB0ZXN0IFZJRElPQ19RVUVSWUNBUDogT0sKwqDCoMKgIHRlc3QgVklESU9D
X0cvU19QUklPUklUWTogT0sKwqDCoMKgIHRlc3QgZm9yIHVubGltaXRlZCBvcGVuczogT0sKCkRl
YnVnIGlvY3RsczoKwqDCoMKgIHRlc3QgVklESU9DX0RCR19HL1NfUkVHSVNURVI6IE9LIChOb3Qg
U3VwcG9ydGVkKQrCoMKgwqAgdGVzdCBWSURJT0NfTE9HX1NUQVRVUzogT0sKCklucHV0IGlvY3Rs
czoKwqDCoMKgIHRlc3QgVklESU9DX0cvU19UVU5FUi9FTlVNX0ZSRVFfQkFORFM6IE9LIChOb3Qg
U3VwcG9ydGVkKQrCoMKgwqAgdGVzdCBWSURJT0NfRy9TX0ZSRVFVRU5DWTogT0sgKE5vdCBTdXBw
b3J0ZWQpCsKgwqDCoCB0ZXN0IFZJRElPQ19TX0hXX0ZSRVFfU0VFSzogT0sgKE5vdCBTdXBwb3J0
ZWQpCsKgwqDCoCB0ZXN0IFZJRElPQ19FTlVNQVVESU86IE9LIChOb3QgU3VwcG9ydGVkKQrCoMKg
wqAgdGVzdCBWSURJT0NfRy9TL0VOVU1JTlBVVDogT0sKwqDCoMKgIHRlc3QgVklESU9DX0cvU19B
VURJTzogT0sgKE5vdCBTdXBwb3J0ZWQpCsKgwqDCoCBJbnB1dHM6IDEgQXVkaW8gSW5wdXRzOiAw
IFR1bmVyczogMAoKT3V0cHV0IGlvY3RsczoKwqDCoMKgIHRlc3QgVklESU9DX0cvU19NT0RVTEFU
T1I6IE9LIChOb3QgU3VwcG9ydGVkKQrCoMKgwqAgdGVzdCBWSURJT0NfRy9TX0ZSRVFVRU5DWTog
T0sgKE5vdCBTdXBwb3J0ZWQpCsKgwqDCoCB0ZXN0IFZJRElPQ19FTlVNQVVET1VUOiBPSyAoTm90
IFN1cHBvcnRlZCkKwqDCoMKgIHRlc3QgVklESU9DX0cvUy9FTlVNT1VUUFVUOiBPSyAoTm90IFN1
cHBvcnRlZCkKwqDCoMKgIHRlc3QgVklESU9DX0cvU19BVURPVVQ6IE9LIChOb3QgU3VwcG9ydGVk
KQrCoMKgwqAgT3V0cHV0czogMCBBdWRpbyBPdXRwdXRzOiAwIE1vZHVsYXRvcnM6IDAKCklucHV0
L091dHB1dCBjb25maWd1cmF0aW9uIGlvY3RsczoKwqDCoMKgIHRlc3QgVklESU9DX0VOVU0vRy9T
L1FVRVJZX1NURDogT0sgKE5vdCBTdXBwb3J0ZWQpCsKgwqDCoCB0ZXN0IFZJRElPQ19FTlVNL0cv
Uy9RVUVSWV9EVl9USU1JTkdTOiBPSyAoTm90IFN1cHBvcnRlZCkKwqDCoMKgIHRlc3QgVklESU9D
X0RWX1RJTUlOR1NfQ0FQOiBPSyAoTm90IFN1cHBvcnRlZCkKwqDCoMKgIHRlc3QgVklESU9DX0cv
U19FRElEOiBPSyAoTm90IFN1cHBvcnRlZCkKCkNvbnRyb2wgaW9jdGxzIChJbnB1dCAwKToKwqDC
oMKgIHRlc3QgVklESU9DX1FVRVJZX0VYVF9DVFJML1FVRVJZTUVOVTogT0sKwqDCoMKgIHRlc3Qg
VklESU9DX1FVRVJZQ1RSTDogT0sKwqDCoMKgIHRlc3QgVklESU9DX0cvU19DVFJMOiBPSwrCoMKg
wqAgdGVzdCBWSURJT0NfRy9TL1RSWV9FWFRfQ1RSTFM6IE9LCsKgwqDCoCB0ZXN0IFZJRElPQ18o
VU4pU1VCU0NSSUJFX0VWRU5UL0RRRVZFTlQ6IE9LCsKgwqDCoCB0ZXN0IFZJRElPQ19HL1NfSlBF
R0NPTVA6IE9LIChOb3QgU3VwcG9ydGVkKQrCoMKgwqAgU3RhbmRhcmQgQ29udHJvbHM6IDMzIFBy
aXZhdGUgQ29udHJvbHM6IDAKCkZvcm1hdCBpb2N0bHMgKElucHV0IDApOgrCoMKgwqAgdGVzdCBW
SURJT0NfRU5VTV9GTVQvRlJBTUVTSVpFUy9GUkFNRUlOVEVSVkFMUzogT0sKwqDCoMKgIHRlc3Qg
VklESU9DX0cvU19QQVJNOiBPSwrCoMKgwqAgdGVzdCBWSURJT0NfR19GQlVGOiBPSwrCoMKgwqAg
dGVzdCBWSURJT0NfR19GTVQ6IE9LCsKgwqDCoCB0ZXN0IFZJRElPQ19UUllfRk1UOiBPSwrCoMKg
wqAgdGVzdCBWSURJT0NfU19GTVQ6IE9LCsKgwqDCoCB0ZXN0IFZJRElPQ19HX1NMSUNFRF9WQklf
Q0FQOiBPSyAoTm90IFN1cHBvcnRlZCkKwqDCoMKgIHRlc3QgQ3JvcHBpbmc6IE9LIChOb3QgU3Vw
cG9ydGVkKQrCoMKgwqAgdGVzdCBDb21wb3Npbmc6IE9LIChOb3QgU3VwcG9ydGVkKQrCoMKgwqAg
dGVzdCBTY2FsaW5nOiBPSwoKQ29kZWMgaW9jdGxzIChJbnB1dCAwKToKwqDCoMKgIHRlc3QgVklE
SU9DXyhUUllfKUVOQ09ERVJfQ01EOiBPSyAoTm90IFN1cHBvcnRlZCkKwqDCoMKgIHRlc3QgVklE
SU9DX0dfRU5DX0lOREVYOiBPSyAoTm90IFN1cHBvcnRlZCkKwqDCoMKgIHRlc3QgVklESU9DXyhU
UllfKURFQ09ERVJfQ01EOiBPSyAoTm90IFN1cHBvcnRlZCkKCkJ1ZmZlciBpb2N0bHMgKElucHV0
IDApOgrCoMKgwqAgwqDCoMKgIGZhaWw6IHY0bDItdGVzdC1idWZmZXJzLmNwcCg3MTUpOiBxLmNy
ZWF0ZV9idWZzKG5vZGUsIDEsICZmbXQpCiE9IEVJTlZBTArCoMKgwqAgdGVzdCBWSURJT0NfUkVR
QlVGUy9DUkVBVEVfQlVGUy9RVUVSWUJVRjogRkFJTArCoMKgwqAgdGVzdCBWSURJT0NfRVhQQlVG
OiBPSyAoTm90IFN1cHBvcnRlZCkKwqDCoMKgIHRlc3QgUmVxdWVzdHM6IE9LIChOb3QgU3VwcG9y
dGVkKQoKVGVzdCBpbnB1dCAwOgoKU3RyZWFtaW5nIGlvY3RsczoKwqDCoMKgIHRlc3QgcmVhZC93
cml0ZTogT0sKwqDCoMKgIMKgwqDCoCBmYWlsOiB2NGwyLXRlc3QtYnVmZmVycy5jcHAoMjE0NSk6
IG5vZGUtPnN0cmVhbW9uKHEuZ190eXBlKCkpCsKgwqDCoCDCoMKgwqAgZmFpbDogdjRsMi10ZXN0
LWJ1ZmZlcnMuY3BwKDIyMjQpOiB0ZXN0QmxvY2tpbmdEUUJ1Zihub2RlLCBxKQrCoMKgwqAgdGVz
dCBibG9ja2luZyB3YWl0OiBGQUlMCsKgwqDCoCDCoMKgwqAgZmFpbDogdjRsMi10ZXN0LWJ1ZmZl
cnMuY3BwKDEyOTQpOiBxLmNyZWF0ZV9idWZzKG5vZGUsIDEsICZmbXQpCiE9IEVJTlZBTArCoMKg
wqAgdGVzdCBNTUFQIChubyBwb2xsKTogRkFJTArCoMKgwqAgwqDCoMKgIGZhaWw6IHY0bDItdGVz
dC1idWZmZXJzLmNwcCgxMjk0KTogcS5jcmVhdGVfYnVmcyhub2RlLCAxLCAmZm10KQohPSBFSU5W
QUwKwqDCoMKgIHRlc3QgTU1BUCAoc2VsZWN0KTogRkFJTArCoMKgwqAgwqDCoMKgIGZhaWw6IHY0
bDItdGVzdC1idWZmZXJzLmNwcCgxMjk0KTogcS5jcmVhdGVfYnVmcyhub2RlLCAxLCAmZm10KQoh
PSBFSU5WQUwKwqDCoMKgIHRlc3QgTU1BUCAoZXBvbGwpOiBGQUlMCgpBZnRlciB0aGlzIHNlcmll
czoKCnY0bDItY29tcGxpYW5jZSBTSEE6IGIxNmY5ZTk0NWQ3NGFhNTUyYWJkZDZmODczODIxY2I3
N2ZhYWYxM2EsIDMyIGJpdHMKCkNvbXBsaWFuY2UgdGVzdCBmb3IgYm0yODM1IG1tYWwgZGV2aWNl
IC9kZXYvdmlkZW8wOgoKRHJpdmVyIEluZm86CsKgwqDCoCBEcml2ZXIgbmFtZcKgwqDCoMKgwqAg
OiBibTI4MzUgbW1hbArCoMKgwqAgQ2FyZCB0eXBlwqDCoMKgwqDCoMKgwqAgOiBtbWFsIHNlcnZp
Y2UgMTYuMQrCoMKgwqAgQnVzIGluZm/CoMKgwqDCoMKgwqDCoMKgIDogcGxhdGZvcm06YmNtMjgz
NS12NGwyCsKgwqDCoCBEcml2ZXIgdmVyc2lvbsKgwqAgOiA1LjIuMArCoMKgwqAgQ2FwYWJpbGl0
aWVzwqDCoMKgwqAgOiAweDg1MjAwMDA1CsKgwqDCoCDCoMKgwqAgVmlkZW8gQ2FwdHVyZQrCoMKg
wqAgwqDCoMKgIFZpZGVvIE92ZXJsYXkKwqDCoMKgIMKgwqDCoCBSZWFkL1dyaXRlCsKgwqDCoCDC
oMKgwqAgU3RyZWFtaW5nCsKgwqDCoCDCoMKgwqAgRXh0ZW5kZWQgUGl4IEZvcm1hdArCoMKgwqAg
wqDCoMKgIERldmljZSBDYXBhYmlsaXRpZXMKwqDCoMKgIERldmljZSBDYXBzwqDCoMKgwqDCoCA6
IDB4MDUyMDAwMDUKwqDCoMKgIMKgwqDCoCBWaWRlbyBDYXB0dXJlCsKgwqDCoCDCoMKgwqAgVmlk
ZW8gT3ZlcmxheQrCoMKgwqAgwqDCoMKgIFJlYWQvV3JpdGUKwqDCoMKgIMKgwqDCoCBTdHJlYW1p
bmcKwqDCoMKgIMKgwqDCoCBFeHRlbmRlZCBQaXggRm9ybWF0CgpSZXF1aXJlZCBpb2N0bHM6CsKg
wqDCoCB0ZXN0IFZJRElPQ19RVUVSWUNBUDogT0sKCkFsbG93IGZvciBtdWx0aXBsZSBvcGVuczoK
wqDCoMKgIHRlc3Qgc2Vjb25kIC9kZXYvdmlkZW8wIG9wZW46IE9LCsKgwqDCoCB0ZXN0IFZJRElP
Q19RVUVSWUNBUDogT0sKwqDCoMKgIHRlc3QgVklESU9DX0cvU19QUklPUklUWTogT0sKwqDCoMKg
IHRlc3QgZm9yIHVubGltaXRlZCBvcGVuczogT0sKCkRlYnVnIGlvY3RsczoKwqDCoMKgIHRlc3Qg
VklESU9DX0RCR19HL1NfUkVHSVNURVI6IE9LIChOb3QgU3VwcG9ydGVkKQrCoMKgwqAgdGVzdCBW
SURJT0NfTE9HX1NUQVRVUzogT0sKCklucHV0IGlvY3RsczoKwqDCoMKgIHRlc3QgVklESU9DX0cv
U19UVU5FUi9FTlVNX0ZSRVFfQkFORFM6IE9LIChOb3QgU3VwcG9ydGVkKQrCoMKgwqAgdGVzdCBW
SURJT0NfRy9TX0ZSRVFVRU5DWTogT0sgKE5vdCBTdXBwb3J0ZWQpCsKgwqDCoCB0ZXN0IFZJRElP
Q19TX0hXX0ZSRVFfU0VFSzogT0sgKE5vdCBTdXBwb3J0ZWQpCsKgwqDCoCB0ZXN0IFZJRElPQ19F
TlVNQVVESU86IE9LIChOb3QgU3VwcG9ydGVkKQrCoMKgwqAgdGVzdCBWSURJT0NfRy9TL0VOVU1J
TlBVVDogT0sKwqDCoMKgIHRlc3QgVklESU9DX0cvU19BVURJTzogT0sgKE5vdCBTdXBwb3J0ZWQp
CsKgwqDCoCBJbnB1dHM6IDEgQXVkaW8gSW5wdXRzOiAwIFR1bmVyczogMAoKT3V0cHV0IGlvY3Rs
czoKwqDCoMKgIHRlc3QgVklESU9DX0cvU19NT0RVTEFUT1I6IE9LIChOb3QgU3VwcG9ydGVkKQrC
oMKgwqAgdGVzdCBWSURJT0NfRy9TX0ZSRVFVRU5DWTogT0sgKE5vdCBTdXBwb3J0ZWQpCsKgwqDC
oCB0ZXN0IFZJRElPQ19FTlVNQVVET1VUOiBPSyAoTm90IFN1cHBvcnRlZCkKwqDCoMKgIHRlc3Qg
VklESU9DX0cvUy9FTlVNT1VUUFVUOiBPSyAoTm90IFN1cHBvcnRlZCkKwqDCoMKgIHRlc3QgVklE
SU9DX0cvU19BVURPVVQ6IE9LIChOb3QgU3VwcG9ydGVkKQrCoMKgwqAgT3V0cHV0czogMCBBdWRp
byBPdXRwdXRzOiAwIE1vZHVsYXRvcnM6IDAKCklucHV0L091dHB1dCBjb25maWd1cmF0aW9uIGlv
Y3RsczoKwqDCoMKgIHRlc3QgVklESU9DX0VOVU0vRy9TL1FVRVJZX1NURDogT0sgKE5vdCBTdXBw
b3J0ZWQpCsKgwqDCoCB0ZXN0IFZJRElPQ19FTlVNL0cvUy9RVUVSWV9EVl9USU1JTkdTOiBPSyAo
Tm90IFN1cHBvcnRlZCkKwqDCoMKgIHRlc3QgVklESU9DX0RWX1RJTUlOR1NfQ0FQOiBPSyAoTm90
IFN1cHBvcnRlZCkKwqDCoMKgIHRlc3QgVklESU9DX0cvU19FRElEOiBPSyAoTm90IFN1cHBvcnRl
ZCkKCkNvbnRyb2wgaW9jdGxzIChJbnB1dCAwKToKwqDCoMKgIHRlc3QgVklESU9DX1FVRVJZX0VY
VF9DVFJML1FVRVJZTUVOVTogT0sKwqDCoMKgIHRlc3QgVklESU9DX1FVRVJZQ1RSTDogT0sKwqDC
oMKgIHRlc3QgVklESU9DX0cvU19DVFJMOiBPSwrCoMKgwqAgdGVzdCBWSURJT0NfRy9TL1RSWV9F
WFRfQ1RSTFM6IE9LCsKgwqDCoCB0ZXN0IFZJRElPQ18oVU4pU1VCU0NSSUJFX0VWRU5UL0RRRVZF
TlQ6IE9LCsKgwqDCoCB0ZXN0IFZJRElPQ19HL1NfSlBFR0NPTVA6IE9LIChOb3QgU3VwcG9ydGVk
KQrCoMKgwqAgU3RhbmRhcmQgQ29udHJvbHM6IDMzIFByaXZhdGUgQ29udHJvbHM6IDAKCkZvcm1h
dCBpb2N0bHMgKElucHV0IDApOgrCoMKgwqAgdGVzdCBWSURJT0NfRU5VTV9GTVQvRlJBTUVTSVpF
Uy9GUkFNRUlOVEVSVkFMUzogT0sKwqDCoMKgIHRlc3QgVklESU9DX0cvU19QQVJNOiBPSwrCoMKg
wqAgdGVzdCBWSURJT0NfR19GQlVGOiBPSwrCoMKgwqAgdGVzdCBWSURJT0NfR19GTVQ6IE9LCsKg
wqDCoCB0ZXN0IFZJRElPQ19UUllfRk1UOiBPSwrCoMKgwqAgdGVzdCBWSURJT0NfU19GTVQ6IE9L
CsKgwqDCoCB0ZXN0IFZJRElPQ19HX1NMSUNFRF9WQklfQ0FQOiBPSyAoTm90IFN1cHBvcnRlZCkK
wqDCoMKgIHRlc3QgQ3JvcHBpbmc6IE9LIChOb3QgU3VwcG9ydGVkKQrCoMKgwqAgdGVzdCBDb21w
b3Npbmc6IE9LIChOb3QgU3VwcG9ydGVkKQrCoMKgwqAgdGVzdCBTY2FsaW5nOiBPSwoKQ29kZWMg
aW9jdGxzIChJbnB1dCAwKToKwqDCoMKgIHRlc3QgVklESU9DXyhUUllfKUVOQ09ERVJfQ01EOiBP
SyAoTm90IFN1cHBvcnRlZCkKwqDCoMKgIHRlc3QgVklESU9DX0dfRU5DX0lOREVYOiBPSyAoTm90
IFN1cHBvcnRlZCkKwqDCoMKgIHRlc3QgVklESU9DXyhUUllfKURFQ09ERVJfQ01EOiBPSyAoTm90
IFN1cHBvcnRlZCkKCkJ1ZmZlciBpb2N0bHMgKElucHV0IDApOgrCoMKgwqAgdGVzdCBWSURJT0Nf
UkVRQlVGUy9DUkVBVEVfQlVGUy9RVUVSWUJVRjogT0sKwqDCoMKgIHRlc3QgVklESU9DX0VYUEJV
RjogT0sgKE5vdCBTdXBwb3J0ZWQpCsKgwqDCoCB0ZXN0IFJlcXVlc3RzOiBPSyAoTm90IFN1cHBv
cnRlZCkKClRlc3QgaW5wdXQgMDoKClN0cmVhbWluZyBpb2N0bHM6CsKgwqDCoCB0ZXN0IHJlYWQv
d3JpdGU6IE9LCsKgwqDCoCB0ZXN0IGJsb2NraW5nIHdhaXQ6IE9LCgpVbmZvcnR1bmF0ZWx5IGlu
IGJvdGggY2FzZXMgdGhlIHByb2dyYW0gaGFuZ3MgYW5kIG5ldmVyIGZpbmlzaC4gVGhpcyBpcwp0
aGUgb3V0cHV0IG9mIHN0cmFjZToKCmlvY3RsKDMsIFZJRElPQ19EUUJVRiwge3R5cGU9VjRMMl9C
VUZfVFlQRV9WSURFT19DQVBUVVJFCgpJdCBpcyBwb3NzaWJsZSB0aGF0IHRoaXMgaXMgYSBwcm9i
bGVtIHdpdGggdGhlIHVzZWQgbGludXgtbmV4dCB2ZXJzaW9uLgpOZXZlcnRoZWxlc3MgdGhlIHNl
cmllcyBpcyBpbXByb3ZlbWVudC4KCj4gMikgV2hhdCBpcyB0aGUgc3RhdHVzIG9mIHRoaXMgZHJp
dmVyIGZyb20geW91ciBwb2ludCBvZiB2aWV3PwpTb3JyeSwgaSdtIG5vdCBhIG1lZGlhIGV4cGVy
dC4gQnV0IGkgYWdyZWUgd2l0aCBEYW4gdGhpcyBuZWVkcwppbXByb3ZlbWVudCBvZiBlcnJvciBo
YW5kbGluZy4gRm9yIGV4YW1wbGUgbWFwcGluZyB0aGUgTU1BTCBlcnJvciBjb2Rlcwp0byBMaW51
eCBlcnJvciBjb2RlcyB3b3VsZCBhdm9pZCBjb25mdXNpb24uCj4gV2hhdCBpcyBuZWVkZWQgdG8g
Z2V0IGl0IG91dCBvZiBzdGFnaW5nPwoKSSB0aGluayB0aGUgZHJpdmVyIG5lZWRzIG1vcmUgdGVz
dGluZyBmb3IgNjQgYml0LiBDb250cmFyeSB0byBSYXNwYmlhbiBhCmxvdCBvZiB0aGUgIm1haW5s
aW5lIiBkaXN0cmlidXRpb25zIG9ubHkgY29uY2VudHJhdGUgb24gYXJtNjQuIEJ1dApjdXJyZW50
bHkgaSBkb24ndCBrbm93IG9mIGFueSA2NCBiaXQgc3BlY2lmaWMgaXNzdWVzLgoKSSBhbHNvIGNh
bid0IHNheSBhbnl0aGluZyBhYm91dCB0aGUgY29udGVudCBvZiB0aGUgVE9ETyBmaWxlLgoKUmVn
YXJkcwpTdGVmYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6
Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZl
cmRldi1kZXZlbAo=
