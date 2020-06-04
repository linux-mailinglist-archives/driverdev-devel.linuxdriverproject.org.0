Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C1E1EEAA1
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Jun 2020 20:55:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C7EDA88423;
	Thu,  4 Jun 2020 18:55:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wEPkJI8hJ47l; Thu,  4 Jun 2020 18:55:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BD813883FA;
	Thu,  4 Jun 2020 18:55:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 696451BF3BA
 for <devel@linuxdriverproject.org>; Thu,  4 Jun 2020 18:55:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 62E87883FA
 for <devel@linuxdriverproject.org>; Thu,  4 Jun 2020 18:55:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k+Vx6hizHxOK for <devel@linuxdriverproject.org>;
 Thu,  4 Jun 2020 18:55:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs57.siol.net [185.57.226.248])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5FE7586A3C
 for <devel@driverdev.osuosl.org>; Thu,  4 Jun 2020 18:55:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 74C5F5204BB;
 Thu,  4 Jun 2020 20:55:13 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 69uBF3PPSFrh; Thu,  4 Jun 2020 20:55:13 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 0DE0952112F;
 Thu,  4 Jun 2020 20:55:13 +0200 (CEST)
Received: from kista.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 5224F5204BB;
 Thu,  4 Jun 2020 20:55:08 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: paul.kocialkowski@bootlin.com,
	mripard@kernel.org
Subject: [PATCH 0/3] media: uapi: cedrus: Fix decoding interlaced H264 content
Date: Thu,  4 Jun 2020 20:57:42 +0200
Message-Id: <20200604185745.23568-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.27.0
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
Cc: devel@driverdev.osuosl.org, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, nicolas@ndufresne.ca, wens@csie.org,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Currently H264 interlaced content it's not properly decoded on Cedrus.
There are two reasons for this:
1. slice parameters control doesn't provide enough information
2. bug in frame list construction in Cedrus driver

As described in commit message in patch 1, references stored in
reference lists should tell if reference targets top or bottom field.
However, this information is currently not provided. Patch 1 adds
it in form of flags which are set for each reference. Patch 2 then
uses those flags in Cedrus driver.

Frame list construction is fixed in patch 3.

This solution was extensively tested using Kodi on LibreELEC with A64,
H3, H5 and H6 SoCs in slightly different form (flags were transmitted
in MSB bits in index).

Note: I'm not 100% sure if flags for both, top and bottom fields are
needed. Any input here would be welcome.

Please take a look.

Best regards,
Jernej

Jernej Skrabec (3):
  media: uapi: h264: update reference lists
  media: cedrus: h264: Properly configure reference field
  media: cedrus: h264: Fix frame list construction

 .../media/v4l/ext-ctrls-codec.rst             | 40 ++++++++++++++++++-
 .../staging/media/sunxi/cedrus/cedrus_h264.c  | 27 +++++++------
 include/media/h264-ctrls.h                    | 12 +++++-
 3 files changed, 62 insertions(+), 17 deletions(-)

-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
