Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 52411951334
	for <lists+driverdev-devel@lfdr.de>; Wed, 14 Aug 2024 05:44:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 690EE606ED;
	Wed, 14 Aug 2024 03:44:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kvz7swE3gKVR; Wed, 14 Aug 2024 03:44:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8532F6070A
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8532F6070A;
	Wed, 14 Aug 2024 03:44:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3341C1BF59B
 for <devel@linuxdriverproject.org>; Wed, 14 Aug 2024 03:44:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0AE85802CE
 for <devel@linuxdriverproject.org>; Wed, 14 Aug 2024 03:44:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mBwzYa28KlYQ for <devel@linuxdriverproject.org>;
 Wed, 14 Aug 2024 03:44:29 +0000 (UTC)
X-Greylist: delayed 467 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 14 Aug 2024 03:44:28 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9487A81341
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9487A81341
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.203.238.61;
 helo=mail.inp.uz; envelope-from=qudiratov@inp.uz; receiver=<UNKNOWN> 
Received: from mail.inp.uz (mail.inp.uz [185.203.238.61])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9487A81341
 for <devel@driverdev.osuosl.org>; Wed, 14 Aug 2024 03:44:28 +0000 (UTC)
Received: from server.inp.uz (mail.inp.uz [127.0.0.1])
 by mail.inp.uz (Postfix) with ESMTP id 8B72A1510193
 for <devel@driverdev.osuosl.org>; Wed, 14 Aug 2024 07:31:14 +0500 (+05)
X-Virus-Scanned: Debian amavisd-new at server.inp.uz
Received: from mail.inp.uz ([127.0.0.1])
 by server.inp.uz (server.inp.uz [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id CYX9bum6qcc7 for <devel@driverdev.osuosl.org>;
 Wed, 14 Aug 2024 07:31:14 +0500 (+05)
Received: from _ (mail.inp.uz [127.0.0.1])
 by mail.inp.uz (Postfix) with ESMTPSA id E1FE0150FF7E;
 Wed, 14 Aug 2024 04:30:14 +0500 (+05)
MIME-Version: 1.0
Date: Wed, 14 Aug 2024 02:30:14 +0300
From: Rowell <qudiratov@inp.uz>
To: undisclosed-recipients:;
Mail-Reply-To: theresawilliams9909@gmail.com
Message-ID: <5f18fa2d795490242ed2e73bc6b6514a@inp.uz>
X-Sender: qudiratov@inp.uz
User-Agent: INP Webmail by M.Nishonov
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=inp.uz; h=
 user-agent:message-id:reply-to:to:from:from:date:date
 :content-transfer-encoding:content-type:content-type
 :mime-version; s=dkim; t=1723602674; x=1724466675; bh=QJSCxFHt+v
 7NpbIDZnvqowDaxiDLDVDSUdXtd00JKyc=; b=lxutFYSRJvk/GLJaj6P5x7chcn
 rzmVvwGX2eJ+nvswgaIVVLAN252sRGQqunhtIMZxdt6G4FDcuH7YREpSpeMnLf8x
 SUBzNny1qbk2cI7OsaP7IBhh56T5TdTEnbl+Bf9Gp4iZuVqGbycIc7wmpPllo8Dc
 Tu6l5x4OMFpEZ/HPQ=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=inp.uz
X-Mailman-Original-Authentication-Results: server.inp.uz (amavisd-new);
 dkim=pass
 reason="pass (just generated, assumed good)" header.d=inp.uz
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
Reply-To: theresawilliams9909@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Do you get my last mail
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
