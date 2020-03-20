Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 336D618D4DB
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 17:49:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C4FB4876E3;
	Fri, 20 Mar 2020 16:49:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qGMdI5Q7iXTq; Fri, 20 Mar 2020 16:49:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D10B187697;
	Fri, 20 Mar 2020 16:49:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7011E1BF278
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 16:49:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6CC3B876A2
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 16:49:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KOXM02US9H0v for <devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 16:49:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 263E587697
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 16:49:15 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MAwPZ-1j8zBL0o9p-00BHjF for <devel@driverdev.osuosl.org>; Fri, 20 Mar
 2020 17:49:14 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id D79A46502D9
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 16:49:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gfaTEF3fixRB for <devel@driverdev.osuosl.org>;
 Fri, 20 Mar 2020 17:49:13 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id 8357C64DCAB
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 17:49:13 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.8.5.41) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Fri, 20 Mar 2020 17:49:13 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id 86EAC80509; Fri, 20 Mar 2020 17:12:06 +0100 (CET)
Date: Fri, 20 Mar 2020 17:12:06 +0100
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH v3 11/11] media: adv748x: allow the HDMI sub-device to accept
 EDID
Message-ID: <4fce566b68bbe4f85cf92cd80a455b575a5d95d1.1584720678.git.alexander.riesen@cetitec.com>
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
X-Provags-ID: V03:K1:GSpfQxHB7acbGVohJ3UV5Vw3R7SOq67fppD0bLw6NbPIlSkJ1J0
 lRfaHarRm43U9iJzPLXzGRMYbyE4sE59oKp44AhKheuH7jYRlUqhMWlPCVoMZaXfki/VHwc
 O66lcVgHJIyyXMOaoixDJWr1Hfje9XaJ9q7frwB2MzkpHTbKfBfhOJUVi+CjVPCIrSDZUjN
 0t35/lTNKlTbaRjsq2PUQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:GPFNL0beaJQ=:h25EUiUEJT+hv4VRGidz+o
 vFmNJzyvT7LnceMRxI/IrnoRomIwlX7UVEvoWkqoNbTcOqo0V40pIjeKBneyo+sA9vzYZxfxw
 05Tea6PMFBNucmLk0PNtqJFH7KBFSajqqBAika4zIz1JiPxmKIjk3eHDysdeRnE6h+l2aG7n2
 thIyq7lGjP64I6kiVggbADz+O7KRBGz3oqiFdxbuUfeNnrS0KzrY99uBaZhHD6fvVDsUEcn4d
 ly2rOMk0X1n0zxuAYJ48HCrcLMvJ5HoY4wMfhpwXsfXCSgujzNrSpA2vLh+3ui041Zq/sNT1r
 1wklUIvWFuyWCZTV9nZpCJUM2Ryo+B6keJkbWMkVox6XHG+peOEWyd/ZZUJg2eFDpb2OYs/ky
 3P3qasqNFqt1ewg/0gOXp1mus/SNnw6sO7Oll8bc0C1yuzEHBVhFx+gsJk+bVGwrLsrnX+bjg
 9mNBKH7m0gjNUtxABYcp3VCT/NSR7m6oR7NWDTzkgjIQ463QCdR0U6Um+I5h3BbzbEe9PUbQb
 98cr2FYdkD96D3aH7R9ANmNkPOaGpjjGHuB3R34rblaDi0QlTyfTGIb42m6zIX7x100MfNB4m
 gLWiqzwKUoxQsMf5/WjwFv7TysLU6YVbUhXmMgD94hTwCmon4MWfK9g+JqLQgUrQyP4/VxntO
 6dZPQtShY0Wu8KW4oQlfT6UlRxkK4oYYSBAFXsE+DPDjftXT3zZJANCcIV27HXyhqIbsjlpZr
 oAEO98J4wCQB6gZG2oXcighULG6PhyTR+H/2idRy5qxka46+zIpHBPSH60U+1A4RZMHCDAOw0
 LQwPvDqv9XC5H666uwOdODXXvNcL9UH0ULG1kE1GOoE/DiTrUF0S65BTHPQ6lkrKk5V1P3XDe
 P+YDoXkb4Xg425qxMyrjkUAyqceyG2mUSu3y3N4qnKz+fQIC/cC2Y6R7w5neOm8y7ZIC9lUyn
 LTtXro6L2dGOfKAQVdGByVOatJM2GmCg=
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

This makes it possible to load a EDID reported by the device
with v4l2-ctl utility:

  vdev=/dev/$(grep -l '^adv748x.*hdmi$' /sys/class/video4linux/v4l-subdev*/name |cut -d/ -f5-5)
  v4l2-ctl -d $vdev --set-edid=pad=0,file=/etc/adv7482.edid

Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>

--

I would like to avoid doing that, but found no other way yet.
Suggestions very welcome.
---
 drivers/media/i2c/adv748x/adv748x-hdmi.c | 27 ++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/media/i2c/adv748x/adv748x-hdmi.c b/drivers/media/i2c/adv748x/adv748x-hdmi.c
index 664930e55baf..fea133472911 100644
--- a/drivers/media/i2c/adv748x/adv748x-hdmi.c
+++ b/drivers/media/i2c/adv748x/adv748x-hdmi.c
@@ -775,7 +775,34 @@ static int adv748x_hdmi_log_status(struct v4l2_subdev *sd)
 	return 0;
 }
 
+static long adv748x_hdmi_querycap(struct adv748x_hdmi *hdmi,
+				  struct v4l2_capability *cap)
+{
+	struct adv748x_state *state = adv748x_hdmi_to_state(hdmi);
+
+	cap->version = LINUX_VERSION_CODE;
+	strlcpy(cap->driver, state->dev->driver->name, sizeof(cap->driver));
+	strlcpy(cap->card, "hdmi", sizeof(cap->card));
+	snprintf(cap->bus_info, sizeof(cap->bus_info), "i2c:%d-%04x",
+		 i2c_adapter_id(state->client->adapter),
+		 state->client->addr);
+	cap->device_caps = V4L2_CAP_AUDIO | V4L2_CAP_VIDEO_CAPTURE;
+	cap->capabilities = V4L2_CAP_DEVICE_CAPS;
+	return 0;
+}
+
+static long adv748x_hdmi_ioctl(struct v4l2_subdev *sd,
+			       unsigned int cmd, void *arg)
+{
+	struct adv748x_hdmi *hdmi = adv748x_sd_to_hdmi(sd);
+
+	if (cmd == VIDIOC_QUERYCAP)
+		return adv748x_hdmi_querycap(hdmi, arg);
+	return -ENOTTY;
+}
+
 static const struct v4l2_subdev_core_ops adv748x_core_ops_hdmi = {
+	.ioctl = adv748x_hdmi_ioctl,
 	.log_status = adv748x_hdmi_log_status,
 };
 
-- 
2.25.1.25.g9ecbe7eb18

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
