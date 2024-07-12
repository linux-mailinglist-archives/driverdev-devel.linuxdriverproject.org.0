Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B49930362
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Jul 2024 04:47:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D31A607DD;
	Sat, 13 Jul 2024 02:47:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3H-Akx5Hk3ms; Sat, 13 Jul 2024 02:47:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33275606A7
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33275606A7;
	Sat, 13 Jul 2024 02:47:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 780C51BF855
 for <devel@linuxdriverproject.org>; Sat, 13 Jul 2024 02:47:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 625D98466B
 for <devel@linuxdriverproject.org>; Sat, 13 Jul 2024 02:47:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pVUH8gyqMv6L for <devel@linuxdriverproject.org>;
 Sat, 13 Jul 2024 02:47:13 +0000 (UTC)
X-Greylist: delayed 60815 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 13 Jul 2024 02:47:12 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AFB7984662
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AFB7984662
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.187.229.123;
 helo=mail.liongreatenergy.com;
 envelope-from=lgerelationship@liongreatenergy.com; receiver=<UNKNOWN> 
Received: from mail.liongreatenergy.com (mail.liongreatenergy.com
 [170.187.229.123])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AFB7984662
 for <devel@driverdev.osuosl.org>; Sat, 13 Jul 2024 02:47:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.liongreatenergy.com (Postfix) with ESMTP id 6266D1E1E89;
 Fri, 12 Jul 2024 15:41:55 +0800 (+08)
Received: from mail.liongreatenergy.com ([127.0.0.1])
 by localhost (mail.liongreatenergy.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id dVT6t-nBvi27; Fri, 12 Jul 2024 15:41:55 +0800 (+08)
Received: from localhost (localhost [127.0.0.1])
 by mail.liongreatenergy.com (Postfix) with ESMTP id 324221E1E88;
 Fri, 12 Jul 2024 15:41:54 +0800 (+08)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.liongreatenergy.com 324221E1E88
X-Virus-Scanned: amavisd-new at liongreatenergy.com
Received: from mail.liongreatenergy.com ([127.0.0.1])
 by localhost (mail.liongreatenergy.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id w_WFXUhLvfHD; Fri, 12 Jul 2024 15:41:54 +0800 (+08)
Received: from [85.195.89.86] (unknown [85.195.89.86])
 by mail.liongreatenergy.com (Postfix) with ESMTPSA id A8B781E1E75;
 Fri, 12 Jul 2024 15:41:45 +0800 (+08)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Hello
To: Recipients <lgerelationship@liongreatenergy.com>
From: "Saephan Foundation" <lgerelationship@liongreatenergy.com>
Date: Fri, 12 Jul 2024 07:41:37 -0700
Message-Id: <20240712074145.A8B781E1E75@mail.liongreatenergy.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=liongreatenergy.com; 
 s=04859780-2B2A-11EE-A585-A23830B9CE57; t=1720770114;
 bh=pqtfMu+zogd/8FwLI/lKpuSUzIpyGN4IMhK5FDSgD/A=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=D4Z+cJIXAR2neMZ6qZdD+tyxhfGEEG+lYTsAXS+RleMvVAxhRMxwuiZI8ThUNVG7M
 nHqtF3CcigiFPB70CeIL2R8swo3uZ8Sl0BSR69Oril65eHjajpxfZJMyXLKUnLVOK2
 Ltaga3ozn1c+8iajHzMVhUc6SrYtKneUORa70SYy3vicy6eq4eHyF22R+bRznPRnSp
 66VozafxPUbTJo87FVHf48yUdTjcjnrfVoKmYkyqpN0mJEIadXhd9q1Ano1dxGJox9
 AXWxjmUEA0HFSo0kCNNpN0hoUvh2HeczGhEprtf50EGLeGctJ+/E16ZN6gvfz8u2VV
 bV/OJQYlYYWsw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=liongreatenergy.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=liongreatenergy.com header.i=@liongreatenergy.com
 header.a=rsa-sha256 header.s=04859780-2B2A-11EE-A585-A23830B9CE57
 header.b=D4Z+cJIX
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
Reply-To: cheng.saephanfoundation@outlook.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R29vZCBkYXksCgpXZSBhcmUgcGxlYXNlZCB0byBpbmZvcm0geW91IHRoYXQgeW91IGhhdmUgYmVl
biBzZWxlY3RlZCB0byByZWNlaXZlIGEgZG9uYXRpb24gb2Yg4oKsMiw4MDAsMDAwLjAwIGZyb20g
dGhlIFNhZXBoYW4gRm91bmRhdGlvbi4KClBsZWFzZSByZXBseSB0byB0aGlzIGVtYWlsIGZvciBm
dXJ0aGVyIGRldGFpbHMuCgpTaW5jZXJlbHksClNhZXBoYW4gRm91bmRhdGlvbgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QK
ZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
