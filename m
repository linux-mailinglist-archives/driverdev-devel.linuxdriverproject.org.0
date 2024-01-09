Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F99828EAD
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jan 2024 21:58:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4BA6060F35;
	Tue,  9 Jan 2024 20:58:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4BA6060F35
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YRI1xwDNCBUT; Tue,  9 Jan 2024 20:58:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3AA9A60F30;
	Tue,  9 Jan 2024 20:58:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3AA9A60F30
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6B6F41BF255
 for <devel@linuxdriverproject.org>; Tue,  9 Jan 2024 20:58:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 42BB140138
 for <devel@linuxdriverproject.org>; Tue,  9 Jan 2024 20:58:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 42BB140138
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C-AcX8tyefnK for <devel@linuxdriverproject.org>;
 Tue,  9 Jan 2024 20:58:28 +0000 (UTC)
X-Greylist: delayed 20156 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 09 Jan 2024 20:58:27 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B253D40111
Received: from mail.dairikab.go.id (unknown [103.186.192.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B253D40111
 for <devel@driverdev.osuosl.org>; Tue,  9 Jan 2024 20:58:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.dairikab.go.id (Postfix) with ESMTP id AC97743C0B0E;
 Tue,  9 Jan 2024 20:08:38 +0700 (WIB)
Received: from mail.dairikab.go.id ([127.0.0.1])
 by localhost (mail.dairikab.go.id [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id BJDRdL5RI29b; Tue,  9 Jan 2024 20:08:38 +0700 (WIB)
Received: from localhost (localhost [127.0.0.1])
 by mail.dairikab.go.id (Postfix) with ESMTP id 8C0B443C0A42;
 Tue,  9 Jan 2024 20:08:23 +0700 (WIB)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.dairikab.go.id 8C0B443C0A42
X-Virus-Scanned: amavisd-new at dairikab.go.id
Received: from mail.dairikab.go.id ([127.0.0.1])
 by localhost (mail.dairikab.go.id [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Mh3D8Cz7obpU; Tue,  9 Jan 2024 20:08:23 +0700 (WIB)
Received: from [192.168.152.246] (unknown [197.211.58.104])
 by mail.dairikab.go.id (Postfix) with ESMTPSA id 93FA043C0A4B;
 Tue,  9 Jan 2024 20:08:16 +0700 (WIB)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Representative Needed
To: Recipients <desi@dairikab.go.id>
From: Mrs Elizabeth Moore<desi@dairikab.go.id>
Date: Tue, 09 Jan 2024 14:08:05 +0100
Message-Id: <20240109130816.93FA043C0A4B@mail.dairikab.go.id>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dairikab.go.id; 
 s=7AEC4404-F04A-11EB-AB9E-BF45B53556D9; t=1704805703;
 bh=vDYXfuzaExQxGzleSe7xwiv6dICPy2H4Ny/SDKLuuG0=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=BnXltYeMCxa/TlB5PGwixclSwie7OshvG+P8CATeQKoux/USezTxQPVFheB2qbDTV
 dr+Am88uvH5gjseubKRxOy5Xj8PEMh+yy1FaSbJoIplNJkXxsc0BGBlj2kFTkoX7Vf
 CFgWNZbuPUrqGzyx5pRCCG9bRKDbNZyMNKAZrHAtyUa1l7V/M3KMSg6GBlWhtdyGup
 sTDQ8CI0d4NzljmMpi1qlnTRAsiEyyqiRP11WQKsAGsQIxTDY4D5nfGN34RbDDfdMk
 muJclVWPOKx90PzhCQ4yDlLtuaBwsoA/DNlxSILFgr2GBWpNGrTcMOw90GE0ZwpF4V
 Mv13mCkSltQqg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=fail reason="signature verification failed" (2048-bit key)
 header.d=dairikab.go.id header.i=@dairikab.go.id header.a=rsa-sha256
 header.s=7AEC4404-F04A-11EB-AB9E-BF45B53556D9 header.b=BnXltYeM
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
Reply-To: rep76616@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

My name is  Mrs Elizabeth Moore we need a Company Representative in your city location, you can work online or at home and get good payment, contact us if interested on this Email:  rep76616@gmail.com


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
