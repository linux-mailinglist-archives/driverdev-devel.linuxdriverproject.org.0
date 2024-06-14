Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 55323914F90
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jun 2024 16:08:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3914A81AF6;
	Mon, 24 Jun 2024 14:08:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id svfvLZSyHs_1; Mon, 24 Jun 2024 14:08:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 51DD481A6D
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 51DD481A6D;
	Mon, 24 Jun 2024 14:08:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B6A6C1BF419
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2024 14:08:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AF94440458
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2024 14:08:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nrJ6rD00TuEL for <devel@linuxdriverproject.org>;
 Mon, 24 Jun 2024 14:08:04 +0000 (UTC)
X-Greylist: delayed 8518 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 24 Jun 2024 14:07:53 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6F96D4042A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6F96D4042A
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.150.25.74;
 helo=mail.unicon.uz; envelope-from=muhitdinov@unicon.uz; receiver=<UNKNOWN> 
Received: from mail.unicon.uz (mail.unicon.uz [45.150.25.74])
 by smtp2.osuosl.org (Postfix) with SMTP id 6F96D4042A
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2024 14:07:52 +0000 (UTC)
Received: from mail.unicon.uz (mail.unicon.uz [127.0.0.1])
 by mail.unicon.uz (Postfix) with ESMTP id 4W4M3k68rhz29p0j
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2024 05:36:02 +0500 (+05)
X-Virus-Scanned: Debian amavisd-new at mail.unicon.uz
Received: from mail.unicon.uz ([127.0.0.1])
 by mail.unicon.uz (mail.unicon.uz [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y0GEunRaUao3 for <devel@driverdev.osuosl.org>;
 Thu, 20 Jun 2024 05:36:02 +0500 (+05)
Received: from [103.195.236.30] (unknown [103.195.236.30])
 by mail.unicon.uz (Postfix) with ESMTPSA id 4W1DQM630zz2Gdt6
 for <devel@driverdev.osuosl.org>; Sat, 15 Jun 2024 03:26:18 +0500 (+05)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Re:
To: devel@driverdev.osuosl.org
From: "PRIVATE" <muhitdinov@unicon.uz>
Date: Sat, 15 Jun 2024 05:26:16 +0700
Message-Id: <4W4M3k68rhz29p0j@mail.unicon.uz>
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=unicon.uz
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
Reply-To: privateidentity034@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Can you do a private project with me?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
