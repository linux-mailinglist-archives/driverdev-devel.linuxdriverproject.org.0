Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5EA715291
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 May 2023 02:28:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8B32A40C16;
	Tue, 30 May 2023 00:28:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8B32A40C16
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lx7tpHy30VQC; Tue, 30 May 2023 00:28:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6A66E404B0;
	Tue, 30 May 2023 00:28:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6A66E404B0
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A8C341BF616
 for <devel@linuxdriverproject.org>; Tue, 30 May 2023 00:28:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 82E9C81C20
 for <devel@linuxdriverproject.org>; Tue, 30 May 2023 00:28:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 82E9C81C20
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XifcNckWghHu for <devel@linuxdriverproject.org>;
 Tue, 30 May 2023 00:28:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D9F0C81B8A
Received: from kanas.pk (static.215.140.99.88.clients.your-server.de
 [88.99.140.215])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D9F0C81B8A
 for <devel@driverdev.osuosl.org>; Tue, 30 May 2023 00:28:39 +0000 (UTC)
Received: from kanas.pk (localhost.localdomain [127.0.0.1])
 by kanas.pk (Postfix) with ESMTP id 7B4BB12C5845;
 Tue, 30 May 2023 00:27:25 +0200 (CEST)
Received-SPF: pass (kanas.pk: localhost is always allowed.)
 client-ip=127.0.0.1; envelope-from=bitcoin@adminsupport.com; helo=kanas.pk; 
Received: from kanas.pk ([127.0.0.1])
 by kanas.pk (kanas.pk [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mXWCdoynnCOX; Tue, 30 May 2023 00:27:24 +0200 (CEST)
Received: from [194.87.151.39] (unknown [194.87.151.39])
 by kanas.pk (Postfix) with ESMTPA id 5422B12C4949;
 Tue, 30 May 2023 00:23:16 +0200 (CEST)
Received-SPF: pass (kanas.pk: connection is authenticated)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Bitcoin Deposit
To: Recipients <bitcoin@adminsupport.com>
From: "Bitcoin Admin" <bitcoin@adminsupport.com>
Date: Mon, 29 May 2023 15:23:14 -0700
Message-Id: <20230530002840.82E9C81C20@smtp1.osuosl.org>
X-Mailman-Original-Authentication-Results: kanas.pk;
 spf=pass (sender IP is 127.0.0.1) smtp.mailfrom=bitcoin@adminsupport.com
 smtp.helo=kanas.pk
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Dave Robert, we have deposited the 39 BTC which amount to ( $1,084,912 USD ) as you requested into your bitcoin portfolio at www.swancoins.net Customer Id: 71624030, Password: KLY22M483
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
