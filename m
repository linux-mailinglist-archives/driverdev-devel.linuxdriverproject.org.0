Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF2618BE76
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Mar 2020 18:43:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 52D6F87EF0;
	Thu, 19 Mar 2020 17:43:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GX+95v4qcE3N; Thu, 19 Mar 2020 17:43:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 87D4B87F86;
	Thu, 19 Mar 2020 17:43:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2574C1BF20B
 for <devel@linuxdriverproject.org>; Thu, 19 Mar 2020 17:42:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 177C12052C
 for <devel@linuxdriverproject.org>; Thu, 19 Mar 2020 17:42:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6g2FOMoUoKzs for <devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 17:42:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
 by silver.osuosl.org (Postfix) with ESMTPS id 613F52050C
 for <devel@driverdev.osuosl.org>; Thu, 19 Mar 2020 17:42:56 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MirfG-1jklAo0rRs-00ewy3; Thu, 19 Mar 2020 18:42:38 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id C8F7D65021B;
 Thu, 19 Mar 2020 17:42:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rCQ0aGqQS6Qb; Thu, 19 Mar 2020 18:42:37 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id 5154864FCB4;
 Thu, 19 Mar 2020 18:42:37 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.8.5.52) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Thu, 19 Mar 2020 18:42:37 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id 97D288050C; Thu, 19 Mar 2020 18:42:36 +0100 (CET)
Date: Thu, 19 Mar 2020 18:42:36 +0100
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH v2 07/10] dt-bindings: adv748x: add information about serial
 audio interface (I2S/TDM)
Message-ID: <c9ff553f804f178a247dca356306948e971432fb.1584639664.git.alexander.riesen@cetitec.com>
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
References: <cover.1584639664.git.alexander.riesen@cetitec.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1584639664.git.alexander.riesen@cetitec.com>
X-Originating-IP: [10.8.5.52]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A290D7F536A6D7762
X-Provags-ID: V03:K1:SGVgOTMTxP8wV9Ot+30RlSw7fUNFAugQDlIO/7tEF1SXcAopXJE
 wktuyPMUjQKDIsNRJGZNbl6u1wyyQ6BjIv0YhH+3oroTIs9ax+cyQHbtdWCcUpzX+vkYKEP
 SWaIOdGCG4oO6nHj0+jPhoadhOCYDoRJNpXTJPasbuOjyg57TCR3Jh54ej2kfYruGCM9Rgt
 63WKAm3xGBK1z1Jj62HyQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:iJv2zxx1E/c=:vlETZON/2o5onOAbEdzExv
 IJHdpFjICIu6p/oBKMlmAzxWH4+PWlA/AmYYTT2uRqNHd52CZ+aS2E5t9Y1eKL/0mNLjf6OSV
 gJXHU9/Eai55eeH2y+MAPlmtgBYo1/JdpnKgaBa80rSBc6p42w68FpkPRdjzBGFrCa+J9a220
 xmLqdRlAoh3kXqV8CpY27gRupnPnN9CEobkScjEdJeWH9K6DHzke9X1JteIyB3deIIEvO/lkx
 LJm1CWEM+3Gg8EkRECT7snx0GwqqS5FYHa6ga84ATmyK80Jpeiam8P8n+wjior6soUd2GUAmL
 cFsQR93PkWATrAS6LqtsQmwotyPPi5kEAIrfS+h4xJNKjwIC8vnIbuV5/RcXRAXDD3rB4kQOw
 sN8mKLrNB3EhhXeg6A6oBUB6aT1j/xzfYQY/86DfXvnyV+d7DAyi5iaqm5Q5SeoZqMkVBENIv
 GbXGZOs6G35+PDj9psmVMavJTOoofj2nh1xwHScNtEYpNrWSb6BlGyTTXMkUKtfitztqXcYWo
 Ao/UMAHD1GWMnLRWv6PZqlRgCydqAacRM2Lovqai9YlxKSvrr70yBSbExrk3YfPoSBO5hMyvJ
 XpEYz+hVGji4dJnswSTNb4XAYgT57nTrFSNdcAbbD77rUk3bOYG7cdNa2MaoNaDTscToSp7ls
 fHLg6mxG5dUPA6PFZsFhQhlWTpey96h+J+ChIAc8GH7+KzjGG7Nq/RBIxTgZeVpX2uwtcz3tz
 xxtqZQth+y2Y53PFA0BmTgST4y9lJfnIVAUuyd8Ln5qQuPGseMs3EzYM3UdWQId0qreTK3KFE
 3C9tjLuk4kcVdwidMuw4ug1bQTXGAsRd73kMcyZhgL3dqMOhoG4jM2jQZLye433UNs4n1vx
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

As the driver has some support for the audio interface of the device,
the bindings file should mention it.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>
---
 .../devicetree/bindings/media/i2c/adv748x.txt    | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/i2c/adv748x.txt b/Documentation/devicetree/bindings/media/i2c/adv748x.txt
index 4f91686e54a6..7d6db052c294 100644
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
 
@@ -16,6 +18,8 @@ Required Properties:
     slave device on the I2C bus. The main address is mandatory, others are
     optional and remain at default values if not specified.
 
+  - #clock-cells: must be <0> if the I2S port is used
+
 Optional Properties:
 
   - interrupt-names: Should specify the interrupts as "intrq1", "intrq2" and/or
@@ -47,6 +51,7 @@ are numbered as follows.
 	  TTL		sink		9
 	  TXA		source		10
 	  TXB		source		11
+	  I2S		source		12
 
 The digital output port nodes, when present, shall contain at least one
 endpoint. Each of those endpoints shall contain the data-lanes property as
@@ -72,6 +77,7 @@ Example:
 
 		#address-cells = <1>;
 		#size-cells = <0>;
+		#clock-cells = <0>;
 
 		interrupt-parent = <&gpio6>;
 		interrupt-names = "intrq1", "intrq2";
@@ -113,4 +119,12 @@ Example:
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
2.25.1.25.g9ecbe7eb18


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
