Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B336A567F
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Feb 2023 11:17:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 87BBB607BC;
	Tue, 28 Feb 2023 10:17:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 87BBB607BC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cDoOY2qrkna5; Tue, 28 Feb 2023 10:17:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D2E7605E9;
	Tue, 28 Feb 2023 10:17:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D2E7605E9
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 36B211BF83E
 for <devel@linuxdriverproject.org>; Tue, 28 Feb 2023 10:17:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 10BD140A68
 for <devel@linuxdriverproject.org>; Tue, 28 Feb 2023 10:17:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10BD140A68
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G9vh6YwjPQDY for <devel@linuxdriverproject.org>;
 Tue, 28 Feb 2023 10:17:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CE638400D6
Received: from mail.crawnon.pl (mail.crawnon.pl [51.68.198.42])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CE638400D6
 for <devel@driverdev.osuosl.org>; Tue, 28 Feb 2023 10:17:35 +0000 (UTC)
Received: by mail.crawnon.pl (Postfix, from userid 1002)
 id 5DA0FA56E8; Tue, 28 Feb 2023 10:16:11 +0000 (UTC)
Received: by mail.crawnon.pl for <devel@driverdev.osuosl.org>;
 Tue, 28 Feb 2023 10:15:02 GMT
Message-ID: <20230228092939-0.1.9f.njw5.0.8on4jmby0l@crawnon.pl>
Date: Tue, 28 Feb 2023 10:15:02 GMT
From: =?UTF-8?Q?"Miko=C5=82aj_Fiodorczyk"?= <mikolaj.fiodorczyk@crawnon.pl>
To: <devel@driverdev.osuosl.org>
Subject: Fotowoltaika - nowe warunki
X-Mailer: mail.crawnon.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=crawnon.pl; s=mail; 
 t=1677579400; bh=C5hX24svv/9/TME4wPCHfYjl17BCtmuxEd1i9B4zdYs=;
 h=Date:From:To:Subject:From;
 b=gGhOG7zaqSdFB+ys5X0a49yghSltb9g0GHkzVst/YcMcdNuSKkLRLk8pUa/IZDqlc
 SxpPjKRWUq3c2nwAZX3g2iFVtbiCz7yny0/T9SJZob8J07yifq28qln2gJv4rwq7k/
 M1kkx6nd4DmXjv/hn2VVF0nK0wtbGl1mZvI3G6/FONmsgae059AYpl51b5mmtm08lJ
 9ya6DagTUFk9PM8m1ITVXdQqoyf4e2472VbtxejOoFyybRfJtpKv4HJ/7/MSfcKdO0
 f4D1OM/SsPCH+1PBxc122tnRTI1CPmzH+wiqpaNpARBa1g9nD+SkfxANhocDzttXX1
 UUYI0O01jMVvQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=crawnon.pl header.i=@crawnon.pl
 header.a=rsa-sha256 header.s=mail header.b=gGhOG7za
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

RHppZcWEIGRvYnJ5LAoKY2hjaWHFgmJ5bSBwb2luZm9ybW93YcSHLCBpxbwgbW9nxIUgUGHFhHN0
d28gdXp5c2thxIcgZG9maW5hbnNvd2FuaWUgbmEgc3lzdGVteSBmb3Rvd29sdGFpY3puZSB3IHJh
bWFjaCBub3dlaiBlZHljamkgcHJvZ3JhbXUgTcOzaiBQcsSFZC4KClByb2dyYW0gemFwZXduaWEg
NjAwMCB6xYIgZG9maW5hbnNvd2FuaWEgbmEgaW5zdGFsYWNqxJkgcGFuZWxpIGkgMTYgMDAwIHrF
giBuYSBtYWdhenluIGVuZXJnaWksIG5pxbxzemUgY2VuIHByxIVkdSBpIG1vxbxsaXdvxZvEhyBv
ZGxpY3plbmlhIGtvc3p0w7N3IHp3acSFemFueWNoIHogaW5zdGFsYWNqxIUgZm90b3dvbHRhaWtp
IHcgcmFtYWNoIHJvemxpY3plbmlhIFBJVCAodHp3LiB1bGdhIHRlcm1vbW9kZXJuaXphY3lqbmEp
LgoKQ3p5IHPEhSBQYcWEc3R3byBvdHdhcmNpIG5hIHdzdMSZcG7EhSByb3ptb3fEmSB3IHR5bSB0
ZW1hY2llPwoKClBvemRyYXdpYW0sCk1pa2/FgmFqIEZpb2RvcmN6eWsKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVs
QGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2pl
Y3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
