Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD59373B12
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 May 2021 14:24:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22F4382E19;
	Wed,  5 May 2021 12:24:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MTtePCLwLaI8; Wed,  5 May 2021 12:24:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B13D82CF9;
	Wed,  5 May 2021 12:24:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1E8931BF852
 for <devel@linuxdriverproject.org>; Wed,  5 May 2021 12:24:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0AF9B83DF2
 for <devel@linuxdriverproject.org>; Wed,  5 May 2021 12:24:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ziqfbxk6a3gA for <devel@linuxdriverproject.org>;
 Wed,  5 May 2021 12:24:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6A53583CAF
 for <devel@driverdev.osuosl.org>; Wed,  5 May 2021 12:24:05 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 57ED41F42E68
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCHv2 0/3] Fix .buf_prepare
Date: Wed,  5 May 2021 14:23:44 +0200
Message-Id: <20210505122347.7576-1-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <58791717-b7a9-d057-a998-a4440fcbe783@collabora.com>
References: <58791717-b7a9-d057-a998-a4440fcbe783@collabora.com>
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
Cc: devel@driverdev.osuosl.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 kernel@collabora.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Maxime Ripard <mripard@kernel.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Drivers should only set the payload on .buf_prepare if the
buffer is CAPTURE type. If an OUTPUT buffer has a zero bytesused
set by userspace then v4l2-core will set it to buffer length.

If we overwrite bytesused for OUTPUT buffers, too, then
vb2_get_plane_payload() will return incorrect value which might be then
written to hw registers by the driver.

Andrzej Pietrasiewicz (2):
  media: hantro: Fix .buf_prepare
  media: cedrus: Fix .buf_prepare

Ezequiel Garcia (1):
  media: rkvdec: Fix .buf_prepare

 drivers/staging/media/hantro/hantro_v4l2.c        |  9 ++++++++-
 drivers/staging/media/rkvdec/rkvdec.c             | 10 +++++++++-
 drivers/staging/media/sunxi/cedrus/cedrus_video.c |  8 +++++++-
 3 files changed, 24 insertions(+), 3 deletions(-)


base-commit: 0b276e470a4d43e1365d3eb53c608a3d208cabd4
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
