Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7AA580FBC
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 Jul 2022 11:21:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E807660BB0;
	Tue, 26 Jul 2022 09:21:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E807660BB0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k99K7VI3QGtV; Tue, 26 Jul 2022 09:21:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70A2260AEE;
	Tue, 26 Jul 2022 09:21:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 70A2260AEE
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6537B1BF5AE
 for <devel@linuxdriverproject.org>; Tue, 26 Jul 2022 09:21:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3CC0841998
 for <devel@linuxdriverproject.org>; Tue, 26 Jul 2022 09:21:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3CC0841998
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qfThHoaTZ9Zi for <devel@linuxdriverproject.org>;
 Tue, 26 Jul 2022 09:21:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 41F1A41970
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 41F1A41970
 for <devel@linuxdriverproject.org>; Tue, 26 Jul 2022 09:21:18 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id 66so10300456vse.4
 for <devel@linuxdriverproject.org>; Tue, 26 Jul 2022 02:21:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=z3MGFjHJzoJcuRvM0uR/7SC/hpH15As9xDZGlUWYng8=;
 b=qqWqKt8iaMjS+feoRz/8AJWFvzTmBUcmszDzSp6qXj9/SO/S3/N35/dHU8ig+WvuqO
 Imr7lSt81/FcytlGI5i5AP3SIQukDjaAkY3aGiKVR7P41A1od7x/3VDc8E5vzvIRLl7+
 Qjs3b74gvAuBfiqrWQ4XG7ytcIVbBbZZ68gTinQ9V2xdtDcRovtW2bCZDMf39OpFpntA
 VOHj1pzJEYdk8gu9BTeF19jehBCoXm3JlQyJ5HbnNsW1QZ2+jquYIy8EhHvOvq4NYBwu
 +fciwlCvvfMlafUCgCIcZCq0qQYkPtwisKttTn3ms/r0GTR41lzrF/qyF5kA1hGtx2SL
 Cl5w==
X-Gm-Message-State: AJIora+mG3t04iNTtwh14UM6IcSxcGN945YswIDbIbas5agh7ZPrDbs1
 hG5BfJKkUUTE/sPzlFzBB0u6G3DgyRzNkPef6RE=
X-Google-Smtp-Source: AGRyM1vIUZiiQDiI/PVXBmy/KwYH2ZyzETmV/zaF9T/YfZyy+xpYeEvT+UiARIvNODKpMNugBuOuTE/o4rz5/igHv3E=
X-Received: by 2002:a05:6102:3c5:b0:358:4ff6:3fbf with SMTP id
 n5-20020a05610203c500b003584ff63fbfmr3695879vsq.36.1658827276795; Tue, 26 Jul
 2022 02:21:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:612c:289a:b0:2d6:aed8:cf20 with HTTP; Tue, 26 Jul 2022
 02:21:16 -0700 (PDT)
From: MICROSOFT AWARD <benbauku@gmail.com>
Date: Tue, 26 Jul 2022 02:21:16 -0700
Message-ID: <CAA3w4if914TYTWoYgLFJP2wTO+zZ1ecB+ntUsDiJMLvSdqzDjg@mail.gmail.com>
Subject: Good Day
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=z3MGFjHJzoJcuRvM0uR/7SC/hpH15As9xDZGlUWYng8=;
 b=M70yTWI4EQrbTK/LjLQguuUETF6JYHgZWn7lgUwPBFS6Ymaq9gJ9evv25KOKbh53jr
 DXe2fMtcHgMBwknxmgWXeF1iIdelZZNGzQxgJ2VNQ03gX+djqVuKpMVyMrc5xr3IfZk6
 in1nxJVnrYCp9AkRhuHEV1oD1K2XJAYTJWiFhdVwDRyi+ylw/6WP65ik9Mhbp0ygWCdv
 N9WFIl0IPySYg8fxtk28gOe9NdnFh3i/BooasGn0TW2UwzRfxIGXe83btStwuentJ+EN
 NEKZE83jdMxd+GkZs0bin+oIY04ihySjj8XVkGi3jXCFZoSo1Tl/fpHHXjugOBGOb62D
 tjPw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=M70yTWI4
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
Reply-To: johnwilliams4005@aol.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

TUlDUk9TT0ZUIEFXQVJEIFRFQU0sDQpNSUNSMFNPRlQgU09VVEggQUZSSUNBIChTQU5EVE9OIENJ
VFkpIDExMSBORUxTT04gTUFOREVMQSBST0FELA0KU0FORFRPTiwgSk9IQU5ORVNCVVJHLA0KU09V
VEggQUZSSUNBLg0KQmF0Y2g6IDc4NTM2TVQNCg0KRGVhciwNCg0KDQogICAgICAgICAgICAgICAg
IFdJTk5JTkcgTk9USUZJQ0FUSU9ODQoNCldlIGhhcHBpbHkgYW5ub3VuY2UgdG8geW91IHRoZSBk
cmF3IG9mIHRoZSBNaWNyb3NvZnQgSW50ZXJuYXRpb25hbA0KcHJvZ3JhbXMgaGVsZCBvbiBsYXN0
IG1vbnRoIFlvdXIgZW1haWwgYWRkcmVzcyBhcyBpbmRpY2F0ZWQgd2FzIGRyYXduDQphbmQgYXR0
YWNoZWQgdG8gdGlja2V0IG51bWJlciAwMDg3MzI4MjcyNzQ5OSB3aXRoIFNlcmlhbCBudW1iZXJz
DQpNREIvMDAyIDA4Njk5NTgvMDkgYW5kIGRyZXcgdGhlIEx1Y2t5IHdpbm5pbmcgbnVtYmVycw0K
MTktNDUtODctMzYtNzYtMzgoNzcpLCB3aGljaCBzdWJzZXF1ZW50bHkgd29uIHlvdSB0aGUgbG90
dGVyeSBpbiB5b3VyDQpjYXRlZ29yeS4gWW91IGhhdmUgdGhlcmVmb3JlIGJlZW4gYXBwcm92ZWQg
dG8gQ2xhaW0gYSB0b3RhbCBzdW0gb2YNCntUV08gTUlMTElPTiBVTklURUQgU1RBVEVTIERPTExB
UlMgT05MWX0gaW4gY2FzaCBjcmVkaXRlZCB0byBmaWxlIFJFRg0KTk8uIDogTURCLzkyOS8wOS4g
VGhpcyBpcyBmcm9tIGEgdG90YWwgY2FzaCBwcml6ZSBvZiBVUyQxMCwwMDAsMDAwLjAwDQooVEVO
IE1JTExJT04gVU5JVEVEIFNUQVRFUyBET0xMQVJTIE9OTFkpIEFsbCBwYXJ0aWNpcGFudHMgd2Vy
ZQ0Kc2VsZWN0ZWQgcmFuZG9tbHkgZnJvbSBXb3JsZHdpZGUgV2ViIHNpdGUgdGhyb3VnaCBjb21w
dXRlciBkcmF3IHN5c3RlbQ0KYW5kIGV4dHJhY3RlZCBmcm9tIG92ZXIgMTAwLDAwMCBlbWFpbCBh
ZGRyZXNzZXMgb2YgY29tcGFuaWVzIGFuZA0KSW5kaXZpZHVhbHMuIE91ciBhZ2VudCB3aWxsIGlt
bWVkaWF0ZWx5IGNvbW1lbmNlIHRoZSBwcm9jZXNzIHRvDQpmYWNpbGl0YXRlIHRoZSByZWxlYXNl
IG9mIHlvdXIgZnVuZCBhcyBzb29uIGFzIHlvdSBjb250YWN0IGhpbS4gVG8NCmJlZ2luIHlvdXIg
Y2xhaW1zIHRoZXJlZm9yZSwgeW91IGFyZSBhZHZpc2VkIG9uIGZpbmFsIG5vdGljZSBhbmQgYXMg
YQ0KbWF0dGVyIG9mIHVyZ2VuY3ksIHRvIGNvbnRhY3Qgb3VyIGxpY2Vuc2VkIGFuZCBhY2NyZWRp
dGVkIENsYWltIGFnZW50LA0KZm9yIHRoZSBQcm9jZXNzaW5nIG9mIHlvdXIgcHJpemUgYXdhcmRz
IHdpbm5pbmcgYW5kIHBheW1lbnQgdG8geW91cg0KZGVzaWduYXRlZCBiYW5rIGFjY291bnQgYWZ0
ZXIgYWxsIHN0YXR1dG9yeSBPYmxpZ2F0aW9ucyBoYXZlIGJlZW4NCmNvbmNsdWRlZCBzYXRpc2Zh
Y3RvcmlseS4NClRvIGZpbGUgZm9yIHlvdXIgY2xhaW0sIFBsZWFzZSBDb250YWN0IHlvdXIgZmlk
dWNpYXJ5IGFnZW50Og0KDQpOQU1FOiAgam9obiB3aWxsaWFtcw0KRS1NQUlMOiAgam9obndpbGxp
YW1zNDAwNUBhb2wuY29tDQoNCllvdSBhcmUgYWR2aXNlZCB0byBjb250YWN0IHlvdXIgZmlkdWNp
YXJ5IGFnZW50IHdpdGggdGhlIGZvbGxvd2luZw0KZGV0YWlscyB0byBhdm9pZCB1bm5lY2Vzc2Fy
eSBkZWxheXMgYW5kIGNvbXBsaWNhdGlvbnM6DQoNCjEuIFlvdXIgZnVsbCBOYW1l4oCm4oCm4oCm
4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm
4oCm4oCm4oCm4oCm4oCm4oCm4oCmLi4NCjIuIFNleOKApuKApuKApuKApuKApuKApuKApuKApuKA
puKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKA
puKApuKApuKApuKApuKApuKApuKApuKApi4uDQozLiBZb3VyIGFkZHJlc3PigKbigKbigKbigKbi
gKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbi
gKbigKbigKbigKbigKbigKYuLi4uLi4NCjQuIFlvdXIgY291bnRyeeKApuKApuKApuKApuKApuKA
puKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKA
puKApuKApuKApuKApuKApuKApi4NCjUuIE5hdGlvbmFsaXR54oCm4oCm4oCm4oCm4oCm4oCm4oCm
4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm
4oCm4oCm4oCm4oCm4oCm4oCmLi4NCjYuIFlvdXIgZmF44oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm
4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm
4oCm4oCm4oCm4oCm4oCm4oCm4oCmLg0KNy4gSG9tZSBwaG9uZSBudW1iZXLigKbigKbigKbigKbi
gKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbi
gKbigKbigKbigKYNCjguIE1vYmlsZSBwaG9uZSBudW1iZXLigKbigKbigKbigKbigKbigKbigKbi
gKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKYu
DQo5LiBPY2N1cGF0aW9u4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm
4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm
DQoxMC4gWW91ciBhZ2XigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbi
gKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKYu
DQoxMS4gWW91ciByZWY6IG51bWJlcuKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKA
puKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKApi4uLi4uLi4uLi4uLi4uLi4N
CjEyLiBZb3VyIGx1Y2t5IHdpbm5pbmcgbnVtYmVy4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm
4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCmLi4uLi4uLi4uLi4uLi4uLi4uLg0KMTMuIFNl
cmlhbCBudW1iZXJz4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm
4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCmLg0KDQoNCkZv
ciB0aGUgcHVycG9zZSBvZiBjb25maWRlbnRpYWxpdHksIGJlIGFkdmlzZWQgbm90IHRvIGRpc2Ns
b3NlIHlvdXINCndpbm5pbmcgZGV0YWlscyB0byB0aGUgcHVibGljIHVudGlsIHlvdXIgY2xhaW0g
aGFzIGJlZW4gcHJvY2Vzc2VkIGFuZA0KeW91ciBwcml6ZSBtb25leSByZW1pdHRlZCB0byB5b3Vy
IGRlc2lnbmF0ZWQgYmFuayBhY2NvdW50LiBUaGlzIGlzDQpwYXJ0IG9mIHByZWNhdXRpb25hcnkg
bWVhc3VyZXMgdG8gYXZvaWQgZG91YmxlIGNsYWltIG9yIG1pc3VzZSBvZiB0aGlzDQpwcm9ncmFt
IGJ5IHNvbWUgc29jaWFsIG1pc2NyZWFudHMuDQoNClNpbmNlcmVseSwNCiAgIERyLiBFbGl6YWJl
dGggSGVubmluZyAoTWljcm9zb2Z0IFByb21vdGlvbiBkaXJlY3RvcikNCg0KDQoNCiAgICAgICAg
ICAgICAgICAgICAgICAgICDCqTIwMjIgTWljcm9zb2Z0IENvcnBvcmF0aW9uDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QK
ZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
