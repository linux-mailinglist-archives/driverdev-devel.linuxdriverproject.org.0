Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB047CA46A
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Oct 2023 11:41:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 073E7415BF;
	Mon, 16 Oct 2023 09:41:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 073E7415BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xew-bRYcf6E4; Mon, 16 Oct 2023 09:41:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 99E7B415ED;
	Mon, 16 Oct 2023 09:41:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 99E7B415ED
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0A9021BF3AA
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 16 Oct 2023 09:41:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0FF3241700
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 16 Oct 2023 09:41:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0FF3241700
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, MIME error: error: unexpected end of header
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0Fzv829O7Eml
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 16 Oct 2023 09:41:46 +0000 (UTC)
X-Greylist: delayed 1802 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 16 Oct 2023 09:41:45 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BDA1A4168A
Received: from trace-ea.com (trace-ea.com [185.236.228.152])
 by smtp2.osuosl.org (Postfix) with ESMTP id BDA1A4168A
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 16 Oct 2023 09:41:45 +0000 (UTC)
From: "Email Administrator"  <info@trace-ea.com>
To: driverdev-devel@linuxdriverproject.org
Subject: Account setting...
Date: 16 Oct 2023 11:11:41 +0200
Message-ID: <20231016111141.2CA11995D4F73906@trace-ea.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=trac;
 d=trace-ea.com; 
 h=From:To:Subject:Date:Message-ID:MIME-Version; i=info@trace-ea.com;
 bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
 b=vjDYGop4nv0dCen4Gf2kPKY4EkQ7IqDzSmuG9qkYR8fhrEeudyqg63n3r6/XfgZ8Ohetukr/pRMZ
 YRa8QIWhSYEMCMFqSkI7s9G5qu+cfEaInyqaXzU94oXj7kyXXn0tO+wk8oFliPAc1xBizXLXhgbO
 AZ+UThl9H38h25k0TIo=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=trace-ea.com header.i=info@trace-ea.com
 header.a=rsa-sha256 header.s=trac header.b=vjDYGop4
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


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
