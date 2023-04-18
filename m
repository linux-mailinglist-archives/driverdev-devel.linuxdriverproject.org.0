Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0222E6E5C47
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Apr 2023 10:38:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 679FD60E4B;
	Tue, 18 Apr 2023 08:38:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 679FD60E4B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PqxEwg4GpZj8; Tue, 18 Apr 2023 08:38:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47BB560701;
	Tue, 18 Apr 2023 08:38:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47BB560701
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7BACE1C4177
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 18 Apr 2023 08:38:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4FF1040CB9
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 18 Apr 2023 08:38:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4FF1040CB9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5gWfZbeS--8i
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 18 Apr 2023 08:38:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 25DDB402F6
Received: from mail.grenfellbiz.com (mail.grenfellbiz.com [185.237.253.235])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 25DDB402F6
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 18 Apr 2023 08:38:42 +0000 (UTC)
Received: by mail.grenfellbiz.com (Postfix, from userid 1001)
 id 52FAC9011C1; Tue, 18 Apr 2023 09:50:24 +0200 (CEST)
Received: by mail.grenfellbiz.com for <driverdev-devel@linuxdriverproject.org>;
 Tue, 18 Apr 2023 07:50:23 GMT
Message-ID: <20230418084505-0.1.14.2s4p.0.7nwem6a9j4@grenfellbiz.com>
Date: Tue, 18 Apr 2023 07:50:23 GMT
From: "Alan Beran" <alan.beran@grenfellbiz.com>
To: <driverdev-devel@linuxdriverproject.org>
Subject: =?UTF-8?Q?Odlitky-po=C5=99=C3=A1dek?=
X-Mailer: mail.grenfellbiz.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=grenfellbiz.com; s=mail; t=1681804224;
 bh=kOr93YUtOmaqoawWdSt4Cadr3G4wAWVCS6sInmp2p2U=;
 h=Date:From:To:Subject:From;
 b=cHqci9WG7tJPbVlQp+BA23ms80Ns0zjAFC1RwiAN7f8UwXJ+C6OhgVpDprk4D4WC+
 Be4HTh3NDHmYzIkoGPugKsrwFPAHkuXI6etRLVQ/yDzTt//rEABK4Qwt/EX/Qzph7w
 Rcw+drasjk3zBNNmST9Mw8rFFHq++Qn1sapTpfxo16FxirGhirpLTp4kmr+61ilbB3
 YggEAjEzIOj/K8r3O5qZd9ZUdzqugp/7p1bKe6aWyY/nZw8O4/B0Tc4pEkvZ8kfgMY
 JDXcFAZe1oeRONvyCJa6TYzvK3xfXZXAlpZr4IUIPzWvsiezBWAZ1r0kWS/fMWPW6j
 5SKSN2lI+7hew==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=grenfellbiz.com header.i=@grenfellbiz.com
 header.a=rsa-sha256 header.s=mail header.b=cHqci9WG
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RG9icsOpIHLDoW5vLAoKSGxlZMOhbSBmaXJteSwga3RlcsOpIGpzb3Ugb2Nob3Ruw6kgdXZhxb5v
dmF0IG8gem3Em27EmyBkb2RhdmF0ZWxlIG5hYsOtemVqw61jw61obyBobGluw61rb3bDqSB0bGFr
b3bDqSBvZGxpdGt5LgoKR2FyYW50dWplbWUgb3Bha292YXRlbG5vdSBrdmFsaXR1IGRldGFpbMWv
IHMgbsOtemtvdSBkcnNub3N0w60gcG92cmNodSBhIHZ5c29rb3Ugb2RvbG5vc3TDrSBwcm90aSBr
b3JvemkuCgpWw71yb2JreSBjaHLDoW7DrW1lIHBhc2l2YcSNbsOtbSBwb3ZsYWtlbSBuYSBiw6F6
aSBjaGVtaWUgU3VydGVjIDY1MCB2IHBsbsSbIGF1dG9tYXRpem92YW7DqW0gcHJvY2VzdSBwb25v
cnUuIERldGFpbHkgcHLDocWha292xJsgbGFrdWplbWUgbmEgcm9ib3RpY2vDqSBsaW5jZSBvZCBy
ZW5vbW92YW7DqSDFoXbDvWNhcnNrw6kgZmlybXkuCgpQb2t1ZCB2aWTDrXRlIHDFmcOtbGXFvml0
b3N0IGtlIHNwb2x1cHLDoWNpLCBrb250YWt0dWp0ZSBtxJsuCgpBbGFuIEJlcmFuCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlz
dApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2
ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
