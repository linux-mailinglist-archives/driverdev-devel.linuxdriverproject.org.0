Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 279E3487E37
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Jan 2022 22:24:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B923E429D0;
	Fri,  7 Jan 2022 21:24:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gPwFuLczis2o; Fri,  7 Jan 2022 21:24:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 146DD429DE;
	Fri,  7 Jan 2022 21:24:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6FF541BF35A
 for <devel@linuxdriverproject.org>; Fri,  7 Jan 2022 21:24:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5E6CC60B09
 for <devel@linuxdriverproject.org>; Fri,  7 Jan 2022 21:24:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7oXHmF7yr-xd for <devel@linuxdriverproject.org>;
 Fri,  7 Jan 2022 21:24:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ua1-x936.google.com (mail-ua1-x936.google.com
 [IPv6:2607:f8b0:4864:20::936])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B940160634
 for <devel@driverdev.osuosl.org>; Fri,  7 Jan 2022 21:24:21 +0000 (UTC)
Received: by mail-ua1-x936.google.com with SMTP id v12so12521030uar.7
 for <devel@driverdev.osuosl.org>; Fri, 07 Jan 2022 13:24:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=vHrFFKZpgHUAIv2lGXCql8jSr1FI2QiclCPCrEQE9LY=;
 b=QKDQeojr+EDbezKWK42dB+gaqFecI2g4HoSCSAPzxv3LrACHCS7aS3AWCNqFsJ6GHG
 fmJFxa+Ga+7P91cT74/b5hD7ELrI3htGbqXqqq0YcPV/kveRHcaHKrmVb294KGz8zB3n
 7nl8YHDi8PkSCnhkTFrgmTdJah1CIobns1DMNCHf5tcZatBe2w/safpQsX1kyd+qrucc
 HBLvqa9yDNKK2lNrbDx73H0smrk1ROwr9fPjaVJP8/45vuaQqIHDKzXYifa+JP/uahZt
 ZYf15f0RYO57qKo4qx3aNOKoM3e1C4ChSTn3ZjjJB26fWwRGsafjS3Cb2SFFm+wB0i3C
 cdhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=vHrFFKZpgHUAIv2lGXCql8jSr1FI2QiclCPCrEQE9LY=;
 b=EIjs4p+S/8g2dXJ3phcl98wDpeE8Wqp5bdKFnGK8fCaJomITuriM0dAvlSpH0xcOrJ
 G7QVof0JCHQ06eBS7z6zQWdJRiTWaXCZU6GcUwsvzjdEfUiXZN7Uot1Pz/ZaSy6FYREt
 b6rd/uKWD1V7sHBq/Qg/dIai884+qufGSD1Ac+CAsGyx3GHBw2SoDiRttVTT/tUXX+ON
 GpzzX0Pl+e46MVQ+mc3BMrJS7F+jhMPp8oSnjjYy6emywV7WCQcBZ0bdvUJ8hIXvWmj2
 zVZig45NSXdcPyoJ3EFyqA6Ww7CwthDmy+DKWCGdun+Kb8SulkdsKKJgoZn28w9WHitc
 1BGA==
X-Gm-Message-State: AOAM53029TS+lloAGeH56UuPJAPRJ6jdAQe0rVxV0ze6BUFWd9DU68nE
 AUb7s3VOV4b7mwu1X3gKtf58lKo/nq5I3BR/njo=
X-Google-Smtp-Source: ABdhPJxLZ4z3K8VuxzaaujK4zom0bZLwhqHo9GlrflWH/6S1UZEKz9fp5WPElO9c95hvLpDx9JGgtwlm/QKBluyDVuA=
X-Received: by 2002:ab0:1e4a:: with SMTP id n10mr20345927uak.66.1641590660588; 
 Fri, 07 Jan 2022 13:24:20 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:612c:280d:b0:275:ea6:3261 with HTTP; Fri, 7 Jan 2022
 13:24:20 -0800 (PST)
From: "MRS. NITAYA  P. WALTER" <robinmrssophia027@gmail.com>
Date: Fri, 7 Jan 2022 13:24:20 -0800
Message-ID: <CAANM8DOZNT2gmEirbCnwab84kb2Ytc9OJu2wDvW=LYhFygPgUA@mail.gmail.com>
Subject: Hello Beloved.
To: undisclosed-recipients:;
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
Reply-To: mrs.nitay.p.walters@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGVsbG8gTXkgRGVhcmVzdC4KCiBJIEFNIE1SUy4gTklUQVlBICBQLiBXQUxURVIsIE5BVElPTkFM
SVRZIE9GIFRIQUlMQU5EIEFORCBVU0EsIEkgV0FTCk9OQ0UgTUFSUklFRCBUTyBMQVRFIFdBTFRF
UiBSSUNIQVJEIElOIFRIRSAgQ0lUWSBPRiBORUlHSEJPUkhPT0QgSU4KQ0xFVkVMQU5ELCAoT0hJ
TykgIElOIFVTQSBXSE8gIFdBUyBBIENSVURFIE9JTCBCVVNJTkVTUyBNQU4gVEhBVCBESUVECk9G
IEhFQVJUIEFUVEFDSyBGRVcgWUVBUlMgQUdPLCBXSVRIT1VUIEEgQ0hJTEQuCgpTSU5DRSBISVMg
REVBVEggSSBERUNJREVEIE5PVCBUTyBSRU1BUlJZLCBXSEVOIE1ZIExBVEUgSFVTQkFORCBXQVMK
QUxJVkUgSEUgREVQT1NJVEVEIFRIRSBTVU0gT0YgVVMkIDI1IE1JTExJT04gKFRXRU5UWS1GSVZF
IE1JTExJT04KRE9MTEFSUykgSU4gSFNCQyBCQU5LIElOIE1JTEFOIENJVFkgT0YgSVRBTFkgSU4g
RVVST1BFQU4gQ09OVElORU5ULgoKUFJFU0VOVExZIFRISVMgTU9ORVkgSVMgU1RJTEwgSU4gSFNC
QyBCQU5LIFNMRUVQSU5HLiBNWSBMQVRFIEhVU0JBTkQKV0FMVEVSIFJJQ0hBUkQgTUFERSBUSElT
IE1PTkVZIEFWQUlMQUJMRSBGT1IgRVhQT1JUQVRJT04gT0YgQ1JVREUgT0lMCklOIE1BTEFZU0lB
IEJFRk9SRSBISVMgREVBVEggQ0FNRS4KCiBSRUNFTlRMWSwgTVkgRE9DVE9SIFRPTEQgTUUgVEhB
VCBIRSBDQU5OT1QgR1VBUkFOVEVFIE1FIE9GIExPTkcKTElWSU5HICBEVUUgVE8gTVkgVEhST0FU
IENBTkNFUiBESVNFQVNFLCBIQVZJTkcgS05PV04gTVkgQ09ORElUSU9OIFNPCkkgREVDSURFRCBU
TyBIQU5EIFlPVSBPVkVSIFRISVMgTU9ORVkgVE8gVEFLRSBDQVJFIE9GIFRIRQpMRVNTLVBSSVZJ
TEVHRUQsIFdJRE9XUyBBTkQgVEhFIE5FRURZICBQRU9QTEUgIEFTIEkgSEFWRSBBTFJFQURZIFdJ
TEwKU09NRSBPRiBUSEUgUFJPUEVSVElFUyBBTkQgRlVORFMgSEVSRSBJTiBVU0EgVE8gU1QuIFRI
T01BUyBNT1JFIE5FV01BTgpDRU5URVIsIFlPVSBXSUxMIFVUSUxJWkUgVEhJUyBNT05FWSBUSEUg
V0FZIEkgQU0gR09JTkcgVE8gSU5TVFJVQ1QKSEVSRUlOLiBJIFdBTlQgWU9VIFRPIFRBS0UgMzAg
UEVSQ0VOVCBPRiBUSEUgVE9UQUwgTU9ORVkgRk9SIFlPVVIKUEVSU09OQUwgVVNFIFdISUxFIDcw
JSBPRiBUSEUgTU9ORVkgV0lMTCBHTyBUTyAgQ0hBUklUWeKAnSBQRU9QTEUgQU5ECkhFTFBJTkcg
VEhFIE9SUEhBTkFHRVMgQVMgTElTVEVEIEFCT1ZFLgoKIEkgRE9O4oCZVCBXQU5UIE1ZIEhVU0JB
TkTigJlTIEVGRk9SVFMgVE8gQkUgVVNFRCBCWSBUSEUgR09WRVJOTUVOVCBPRgpJVEFMWSwgSSBH
UkVXIFVQIEFTIEFOIE9SUEhBTiBBTkQgSSBET07igJlUIEhBVkUgQU5ZQk9EWSBBUyBBIEZBTUlM
WQpNRU1CRVIsIEpVU1QgVE8gRU5ERUFWT1VSIFRIQVQgVEhFIE5BTUUgT0YgR09EIElTIE1BSU5U
QUlORUQuIEFNIERPSU5HClRISVMgU08gVEhBVCBHT0QgV0lMTCBGT1JHSVZFIE1ZIFNJTlMgQU5E
IEFDQ0VQVCBNWSBTT1VMIEJFQ0FVU0UgVEhJUwpTSUNLTkVTUyBIQVMgU1VGRkVSRUQgTUUgU08g
TVVDSC4KCiBBUyBTT09OIEFTIEkgUkVDRUlWRSBZT1VSIFBPU0lUSVZFIFJFUExZIEkgU0hBTEwg
R0lWRSBZT1UgVEhFIENPTlRBQ1QKT0YgTVkgTEFURSBIVVNCQU5EIEFDQ09VTlRBTlQgQVQgSFNC
QyBCQU5LIElOIE1JTEFOIElUQUxZIFRPIEdJVkUgWU9VCkEgR09PRCBESVJFQ1RJT04gT04gSE9X
IFRPIENMQUlNIFRISVMgRlVORCwgIEkgV0lMTCBTRU5EIEFVVEhPUklUWQpMRVRURVIgVEhBVCBX
SUxMIFBST1ZFIFlPVSBUSEUgUFJFU0VOVCBCRU5FRklDSUFSWSBPRiBUSEUgTU9ORVkgSU4gVEhF
CkJBTksgVEhBVCBJUyBJRiBZT1UgQVNTVVJFIE1FIFRIQVQgWU9VIFdJTEwgQUNUIEFDQ09SRElO
R0xZIEFTIEkKU1RBVEVEIEhFUkVJTi4KSE9QSU5HICBUTyBSRUNFSVZFIFlPVVIgUkVQTFkuCiBS
RUdBUkRTLAoKTVJTLiBOSVRBWUEgIFAuIFdBTFRFUgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2
ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
