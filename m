Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7627294D9A6
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Aug 2024 03:09:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 31C7080AB3;
	Sat, 10 Aug 2024 01:09:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mtsa5VCRZNtw; Sat, 10 Aug 2024 01:09:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C8E380AE2
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C8E380AE2;
	Sat, 10 Aug 2024 01:09:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1E4A71BF289
 for <devel@linuxdriverproject.org>; Sat, 10 Aug 2024 01:09:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0A4D9613E8
 for <devel@linuxdriverproject.org>; Sat, 10 Aug 2024 01:09:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id edmuf0jBMHks for <devel@linuxdriverproject.org>;
 Sat, 10 Aug 2024 01:09:28 +0000 (UTC)
X-Greylist: delayed 488 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 10 Aug 2024 01:09:27 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 57324613E0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57324613E0
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.203.238.61;
 helo=mail.inp.uz; envelope-from=hqudratov@inp.uz; receiver=<UNKNOWN> 
Received: from mail.inp.uz (mail.inp.uz [185.203.238.61])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 57324613E0
 for <devel@driverdev.osuosl.org>; Sat, 10 Aug 2024 01:09:27 +0000 (UTC)
Received: from server.inp.uz (mail.inp.uz [127.0.0.1])
 by mail.inp.uz (Postfix) with ESMTP id E173415113B8
 for <devel@driverdev.osuosl.org>; Sat, 10 Aug 2024 04:55:51 +0500 (+05)
X-Virus-Scanned: Debian amavisd-new at server.inp.uz
Received: from mail.inp.uz ([127.0.0.1])
 by server.inp.uz (server.inp.uz [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id evVyutLghdEs for <devel@driverdev.osuosl.org>;
 Sat, 10 Aug 2024 04:55:51 +0500 (+05)
Received: from _ (mail.inp.uz [127.0.0.1])
 by mail.inp.uz (Postfix) with ESMTPSA id 2DC19150EB78;
 Sat, 10 Aug 2024 02:07:39 +0500 (+05)
MIME-Version: 1.0
Date: Sat, 10 Aug 2024 00:07:38 +0300
From: Rowell <hqudratov@inp.uz>
To: undisclosed-recipients:;
Mail-Reply-To: theresawilliams9909@gmail.com
Message-ID: <7869cbf800f600972b5c7cdd4ffbab47@inp.uz>
X-Sender: hqudratov@inp.uz
User-Agent: INP Webmail by M.Nishonov
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=inp.uz; h=
 user-agent:message-id:reply-to:to:from:from:date:date
 :content-transfer-encoding:content-type:content-type
 :mime-version; s=dkim; t=1723247751; x=1724111752; bh=Sf6+1rIz0y
 ER1SWrDjPEEvLlza5/dWFUfrcD0p9qxHs=; b=QH2D7qHE4oQRxfa2GVonBk/dC9
 fyyCdTBiSJFcFSQHeoQqWFUPXYrYUX0IfxwaeXDcdpo+OlItWNmWBIWh3/kPsxZ6
 66JayHJ6e0jXUZUkU1MMWNHyf6LUCDKlAaK6d3MvVuP8VF4wrKiKvSvdwWPSIt3L
 WQSQeJ0HUxwTgTvks=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
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

Do you get my mail
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
