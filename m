Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 42DD410A496
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 Nov 2019 20:31:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 06A3722270;
	Tue, 26 Nov 2019 19:31:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vmggDy+8-igP; Tue, 26 Nov 2019 19:31:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E64552214F;
	Tue, 26 Nov 2019 19:31:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7797A1BF346
 for <devel@linuxdriverproject.org>; Tue, 26 Nov 2019 19:31:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7447685EAE
 for <devel@linuxdriverproject.org>; Tue, 26 Nov 2019 19:31:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8cBcuoCqSHqk for <devel@linuxdriverproject.org>;
 Tue, 26 Nov 2019 19:31:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0242.hostedemail.com
 [216.40.44.242])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9011C85660
 for <devel@driverdev.osuosl.org>; Tue, 26 Nov 2019 19:31:24 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay08.hostedemail.com (Postfix) with ESMTP id 20117182CED34;
 Tue, 26 Nov 2019 19:31:23 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::,
 RULES_HIT:41:355:379:973:988:989:1260:1277:1311:1313:1314:1345:1437:1515:1516:1518:1534:1541:1567:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3865:3874:4605:5007:6119:8603:9010:10004:10400:10848:11026:11658:11914:12043:12296:12297:12760:13069:13311:13357:13439:14659:14721:21080:21451:21627:30029:30054,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: spark08_634c6d0a88f45
X-Filterd-Recvd-Size: 1859
Received: from XPS-9350.home (unknown [47.151.135.224])
 (Authenticated sender: joe@perches.com)
 by omf16.hostedemail.com (Postfix) with ESMTPA;
 Tue, 26 Nov 2019 19:31:22 +0000 (UTC)
Message-ID: <94ed28d75af8850171f2542d7170ca61001a9a8b.camel@perches.com>
Subject: staging: most: configfs: PAGE_SIZE char arrays?
From: Joe Perches <joe@perches.com>
To: Christian Gromm <christian.gromm@microchip.com>
Date: Tue, 26 Nov 2019 11:30:55 -0800
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
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
Cc: devel <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

drivers/staging/most/configfs.c:struct mdev_link {
drivers/staging/most/configfs.c-        struct config_item item;
drivers/staging/most/configfs.c-        struct list_head list;
drivers/staging/most/configfs.c-        bool create_link;
drivers/staging/most/configfs.c-        bool destroy_link;
drivers/staging/most/configfs.c-        u16 num_buffers;
drivers/staging/most/configfs.c-        u16 buffer_size;
drivers/staging/most/configfs.c-        u16 subbuffer_size;
drivers/staging/most/configfs.c-        u16 packets_per_xact;
drivers/staging/most/configfs.c-        u16 dbr_size;
drivers/staging/most/configfs.c-        char datatype[PAGE_SIZE];
drivers/staging/most/configfs.c-        char direction[PAGE_SIZE];
drivers/staging/most/configfs.c-        char name[PAGE_SIZE];
drivers/staging/most/configfs.c-        char device[PAGE_SIZE];
drivers/staging/most/configfs.c-        char channel[PAGE_SIZE];
drivers/staging/most/configfs.c-        char comp[PAGE_SIZE];
drivers/staging/most/configfs.c-        char comp_params[PAGE_SIZE];
drivers/staging/most/configfs.c-};

Why are all the char arrays size PAGE_SIZE ?
That seems completely unnecessary.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
