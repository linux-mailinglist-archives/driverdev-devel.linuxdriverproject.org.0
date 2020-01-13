Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EE41D139392
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jan 2020 15:21:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8D12685932;
	Mon, 13 Jan 2020 14:21:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c0jdzSuOdUwB; Mon, 13 Jan 2020 14:21:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 066C2858D3;
	Mon, 13 Jan 2020 14:21:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C468C1BF388
 for <devel@linuxdriverproject.org>; Mon, 13 Jan 2020 14:21:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BD30D86370
 for <devel@linuxdriverproject.org>; Mon, 13 Jan 2020 14:21:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f7nStlnWChXU for <devel@linuxdriverproject.org>;
 Mon, 13 Jan 2020 14:21:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 57807862B2
 for <devel@driverdev.osuosl.org>; Mon, 13 Jan 2020 14:21:06 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MtwIW-1jeZI32dDQ-00uJAi; Mon, 13 Jan 2020 15:15:51 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id 56FA764F293;
 Mon, 13 Jan 2020 14:15:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cy68gE_GQgSA; Mon, 13 Jan 2020 15:15:51 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id 0556764D641;
 Mon, 13 Jan 2020 15:15:51 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.10.2.141) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1320.4; Mon, 13 Jan 2020 15:15:51 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id ACF2D804E9; Mon, 13 Jan 2020 15:15:50 +0100 (CET)
Date: Mon, 13 Jan 2020 15:15:50 +0100
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH 7/8] dt-bindings: adv748x: add information about serial audio
 interface (I2S/TDM)
Message-ID: <20200113141550.GH3606@pflmari>
Mail-Followup-To: Alex Riesen <alexander.riesen@cetitec.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, devel@driverdev.osuosl.org,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
References: <cover.1578924232.git.alexander.riesen@cetitec.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1578924232.git.alexander.riesen@cetitec.com>
X-Originating-IP: [10.10.2.141]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A29536F936F657D64
X-Provags-ID: V03:K1:3UWAIQ3PRfLO3SwbaMk2tmknBL5osw0uZ9NNz1XG25ufDyVB987
 Rnh6LNFpwA3UZYI6ufAhoe4a8NtVJEBSoSefoOWiac4vzKPdAmaGA4uud+7nVPLtU+hwlKB
 ivmJWe3VtUSjoh29NJQYrX4aCjT9VPfn5H6VWbIKyeCuKF/LKs4ZBDoy4NoDeIe820DTsAX
 l1pZXy2FDQa7eBA3kGxXA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:X36LSpL9UeE=:JhDpizHQtVCq2YEPeSFQl1
 frD7dgNShuiSxCY7Lak+2pHZ9AdpAro7xOOXJAffgm2TdK5Bsxpek/sHULuLDPuDg4nHzvuss
 I4I1Xgrqjf+0h85UyTmkFLZk8YpDyV38OIf4NShwXii11bniAm3I1L7/vnAheKP4whf72u7Kz
 igjthw/fY/d9GicwavJI+osUvkzwdjTm0gDj9fxJSnMwvBkfA8+v1RVDrYLx7ZLdrOuasaBpc
 iLhAEFAIud05dAIgS5/F5KblRNytIPEEaCU7/Sfy6JBnS06FXTzTDnKYA/9tJBmNHGp/Tjp5I
 sjYQOV9R5Pt2n08PxhIgcjuNXGNqEonKSrYRNSA5JyozD8tzH+QsItmwA2HSxICnk3T7D7AkC
 9Hx6H4i5ELq329EuqBeUKc8PgdxFbTArgPABsYZeDFIULYZQ4Ya6q8XPF6t0vaExaBk31qdV2
 n4Gek1IB04MSP5J3lp+I7vJhrWuaPjN7sixPVT8GPzJCbcjSVvtyAi9Bkfmicv+XTUbm0sfMD
 qf2csVYjv/3/9J7CRwH98nDl73xvOqgp7wXQWvNEaOfu2zVQwZWfA268xt2seCetHfc8rTmH7
 hWHH4J90LeoeJ8O3oay70Mk6o6w9bS0pL8oP6fgB+dDg/4XL2xN4ZP5fsEbGaMaQ/BQZ3rWXc
 z7hCaZndmJQdJUomIC5kBAJ1TZh9MalwwjXjrPYgKoEU+SoCjnnXzMRVj5S+IeQJueVl6dDYy
 xltBxi/0ljWem09uVVHJwucWLLW+JqL/ekVtooLaYxV6WO+V3XBXpEFjFv4+ajecgFmCEjiMD
 K5/4f8mhz1QJIb2tgTAuHsshMRmZWRCA/IL6/DQ81Byswv282bOOnYuRGjRqwaRfZcepffL2T
 zrmS3VdAwzH87fpd3Mj7NYkVVTBZa3y7Y/cVlzKpc=
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
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As the driver has some support for the audio interface of the device,
the bindings file should mention it.

Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>
---
 .../devicetree/bindings/media/i2c/adv748x.txt       | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/i2c/adv748x.txt b/Documentation/devicetree/bindings/media/i2c/adv748x.txt
index 4f91686e54a6..c42dffb37a82 100644
--- a/Documentation/devicetree/bindings/media/i2c/adv748x.txt
+++ b/Documentation/devicetree/bindings/media/i2c/adv748x.txt
@@ -2,7 +2,9 @@
 
 The ADV7481 and ADV7482 are multi format video decoders with an integrated
 HDMI receiver. They can output CSI-2 on two independent outputs TXA and TXB
-from three input sources HDMI, analog and TTL.
+from three input sources HDMI, analog and TTL. There is also support for an
+I2S compatible interface connected to the audio processor of the HDMI decoder.
+The interface has TDM capability (8 slots, 32 bits, left or right justified).
 
 Required Properties:
 
@@ -47,6 +49,7 @@ are numbered as follows.
 	  TTL		sink		9
 	  TXA		source		10
 	  TXB		source		11
+	  I2S		source		12
 
 The digital output port nodes, when present, shall contain at least one
 endpoint. Each of those endpoints shall contain the data-lanes property as
@@ -113,4 +116,12 @@ Example:
 				remote-endpoint = <&csi20_in>;
 			};
 		};
+
+		port@c {
+			reg = <12>;
+
+			adv7482_i2s: endpoint {
+				remote-endpoint = <&i2s_in>;
+			};
+		};
 	};
-- 
2.24.1.508.g91d2dafee0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
