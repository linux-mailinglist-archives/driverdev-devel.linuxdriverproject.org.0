Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF5E18D491
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 17:35:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 41EB186E1F;
	Fri, 20 Mar 2020 16:35:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7t8Bx0pVE456; Fri, 20 Mar 2020 16:35:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3CC7D86DDC;
	Fri, 20 Mar 2020 16:35:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C8C1B1BF278
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 16:35:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C523E87ADB
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 16:35:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zuh9-R7e9wik for <devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 16:35:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 56E3F87A4F
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 16:35:49 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Ml3ym-1jgfcN21mO-00lUci for <devel@driverdev.osuosl.org>; Fri, 20 Mar
 2020 17:35:47 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id 305AF650123
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 16:35:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CGM-dlayDNrN for <devel@driverdev.osuosl.org>;
 Fri, 20 Mar 2020 17:35:46 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id DC00564D8A8
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 17:35:46 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.8.5.41) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Fri, 20 Mar 2020 17:35:46 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id 9E6F480504; Fri, 20 Mar 2020 17:12:02 +0100 (CET)
Date: Fri, 20 Mar 2020 17:12:02 +0100
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH v3 07/11] media: adv748x: only activate DAI if it is
 described in device tree
Message-ID: <ad4992170f9865f1040f6bda13452f23ea30a787.1584720678.git.alexander.riesen@cetitec.com>
Mail-Followup-To: Alex Riesen <alexander.riesen@cetitec.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 devel@driverdev.osuosl.org, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
References: <cover.1584720678.git.alexander.riesen@cetitec.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1584720678.git.alexander.riesen@cetitec.com>
X-Originating-IP: [10.8.5.41]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A290D7F536A6D7660
X-Provags-ID: V03:K1:dlHiIyZCsqHPXYMXteeLb8S9i4HwnnAzleLBSuXuTJiBBfPZXi1
 1Kae0ncpoXIlADm7mhXOBKrJvH9VvqfD2tPcHvzfcXQjUoJd0JkcLMMvxnzv+AWO61s81Rd
 vFclK2n4vPdtc8RRLytHNvOqw1wacu3dXYsJ6w85y+xjQBEvSpm86e8j8b6+MiBKljiMt4C
 Gey7hTWCgvb1oAJVhCgNA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:L+xUMmrGO9c=:/o5yFMYfpF1g/SrOQNDh6g
 6N+eGjNqhcX/AWJCTAvYOYgzFWkiXw4KvTP9kU1kNlsNZASTKxHmJ116t6S+Im5hqcPxd903D
 tpz4yZSJnd6k4jydff1maOzs2BVmsQLqC+o/Gt88R96RZQqzcBwvG8w190Z1r9aZ78H1veDTj
 j+HTRIJS/q7tux1WwHR3DgU20FKhcse+ZlCImXLE3vmciwL3vfcKyQz/GO4Efw87oGMDhidx5
 0fGDJzMtgUfXpAAZp+3pFQOWFwl6P+dzKjiBUtU+ebNCgbliIkOVyhSVjJ7iTJwAGI9XTZoyO
 cZ+gC7FHM8X8+oEAkB+sF/rus9/nfyiXiAWowmk9vkknEAD5uLlrU7W9kb+KI8XUZFDSxKLhZ
 Yu+YZvrosY2QzHUN39zYM8x8nKCVuEdeu2qcext0H4VwyDvnU3tbXZy4Hv+BTsz4KWrt+nEH2
 Kj0M5g0Gf9KAgiMcW88UkgOrSi5JyX5NVVzrQjxowmV1of8VoimnMQC4GnoFITlmGWsKxAsXn
 pG1bjHgpJdzfPGZ7SRS3BUUVuB9V18ib+syHi4toJzkJ8wtMISylu++ieXXhBUyeY4730+BUG
 Gi7m6AaPt0UVK8+61F4Iq4fbODaUZDMzU5Ht2hhMlVGT3f+ERG7dstwX/xMkKFTNS0TVTPKP/
 rhhssYcVyKfiVxbqmEcAnf/ITw5sUMClDcEb4XIC7CcQS3xgMV6whwEHkKNhbU5QAn19N7ZoQ
 LXghGv+QhYKUChWD5FggBRhhlAE1iVg/JCsPmI8yiUduRBjZRrFZMDp1YVi8X5NNrOL+w5Bdl
 fK9rz3ywqr/TPVo0x65vak7r+aa2fW0Ctqjr1ibgVVlH22Q8x+V634hh1rx7N/U8hDpP+/U
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
Cc: Mark Rutland <mark.rutland@arm.com>, devel@driverdev.osuosl.org,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

To avoid setting it up even if the hardware is not actually connected
to anything physically.

Besides, the bindings explicitly notes that port definitions are
"optional if they are not connected to anything at the hardware level".

Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>
---
 drivers/media/i2c/adv748x/adv748x-dai.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/media/i2c/adv748x/adv748x-dai.c b/drivers/media/i2c/adv748x/adv748x-dai.c
index 1c673efd4745..f22566094568 100644
--- a/drivers/media/i2c/adv748x/adv748x-dai.c
+++ b/drivers/media/i2c/adv748x/adv748x-dai.c
@@ -216,6 +216,11 @@ int adv748x_dai_init(struct adv748x_dai *dai)
 	int ret;
 	struct adv748x_state *state = adv748x_dai_to_state(dai);
 
+	if (!state->endpoints[ADV748X_PORT_I2S]) {
+		adv_info(state, "no I2S port, DAI disabled\n");
+		ret = 0;
+		goto fail;
+	}
 	dai->mclk_name = kasprintf(GFP_KERNEL, "%s.%s-i2s-mclk",
 				   state->dev->driver->name,
 				   dev_name(state->dev));
-- 
2.25.1.25.g9ecbe7eb18


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
