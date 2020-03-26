Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FEE1193D7B
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Mar 2020 12:01:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6BE7F88637;
	Thu, 26 Mar 2020 11:01:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JbCUawCTSXFQ; Thu, 26 Mar 2020 11:01:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3F42088629;
	Thu, 26 Mar 2020 11:01:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2028F1BF354
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 11:01:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 182EE21549
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 11:01:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hKvc5QJ+ntgo for <devel@linuxdriverproject.org>;
 Thu, 26 Mar 2020 11:01:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
 by silver.osuosl.org (Postfix) with ESMTPS id 7879B2079D
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 11:01:41 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1M6lxY-1jAHev2qgo-008LVY for <devel@driverdev.osuosl.org>; Thu, 26 Mar
 2020 12:01:39 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id 7DBF464FC1C
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 11:01:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 37boxrykoGDR for <devel@driverdev.osuosl.org>;
 Thu, 26 Mar 2020 12:01:39 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id 0CD7464F92F
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 12:01:39 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.8.5.79) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Thu, 26 Mar 2020 12:01:38 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id A12B180505; Thu, 26 Mar 2020 11:35:43 +0100 (CET)
Date: Thu, 26 Mar 2020 11:35:43 +0100
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH v4 8/9] dt-bindings: adv748x: add information about serial
 audio interface (I2S/TDM)
Message-ID: <37482bdfc6d6c6e231c58550b6bc4582aa29dde0.1585218857.git.alexander.riesen@cetitec.com>
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
References: <cover.1585218857.git.alexander.riesen@cetitec.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1585218857.git.alexander.riesen@cetitec.com>
X-Originating-IP: [10.8.5.79]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A290D7F536A6D7C67
X-Provags-ID: V03:K1:t/yu0nasCPW9svdexcqGtBiOqRdltdvyuf2ytqJR2nkEurlAo8y
 aAZyuOlP8Ewf84pARDPnjys0no1YLfoqC7of4pKIn/OYpmzHAL4zavtAmnxeE+zADL5cEUZ
 2oI7ojjGm2jBBm6re/6NSBaEcdOHdVQ4+exp0Gplj0lGhD6KqXY9+vpmHwbstKtPJ/DHpW7
 r80dQXHQs9JTx4UJQNNag==
X-UI-Out-Filterresults: notjunk:1;V03:K0:BYaluydFKlQ=:HF7XX2M028omKstveg0AA5
 UfE6crY1Z0NpagvIxadIZtB7inNfBfmwhvflSgYnkN2SvJsfQ8fpSAiljjHpSg7yqrsscE6qQ
 TnMOtrj497R9P40YaQ64giUo8RIiHLcDg7X7YW1RU456W6iMxZt5Xtf/OmQswfgmWZdosp0rc
 hZjpj8+4WovrvHOiWis04DjmQ+5OLUa+u563DTA+seoJQYf9VOzLJ8nGtIISOgtYn0TYjceFs
 bSOMV4g0ZTqcBOO63YucrNQjPIMVHo3azpSLkDvdsErVj5Xdv7Fcp3p5AUzk6Kf82aywdYt4U
 bJMQDrf/Lp05y5fPtxmAtkl4gXLV7SP3Fy1k+dUHAcCWMPgz8zHBDbofelxm+rua/ewzQyOdX
 /smhnkDE/3n+3dBCujyCy2ZZylWkD6CODcBwRhPRu2Bvdf3mVj/Ae4vUXRL3MahedVxF7gsWu
 Wz/JRkTEOYxn0Xbl2s5MGtL+RqmWUk76Qe9CcLtb7l4+yXZsC3pbMD0tRBzR35DQNt5DyjzDy
 qUYPckDVWNcXlKltUXRWQUO5Ud3i2f+6AdeTvl3zpX+5CNqeiRa11961UW8kzhtDJKHkJx+wL
 C1z45g0f7dL0DMiUNZcHL4AVziIqh8U+mksdJtrEQ2f2U3Eog7IGenc/w70cYFLQPlNNpG3DE
 +xBPR8L8/OT5pzNd3Ochohsf+5ewDY9pH+Ry8CBXkG+PepK15S+o/Htaw/5D0mjmWVEGBwP9h
 1Oo+m9Ju0ge2gLrBAy8ukd6LIQNhj6SOg7/sb0yjmyFqDXBfcnkJFhOvM+rgzAdMr5Gs5+eC+
 g/D+vFzH/E9G9AR8jnSMG9ieAfY5Knc1NNPWSm6oNulQ9apIbBiCmJ4xpzBBCqH9jXBJRoe
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

Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

--

v3: remove optionality off MCLK clock cell to ensure the description
    matches the hardware no matter if the line is connected.
    Suggested-by: Geert Uytterhoeven <geert@linux-m68k.org>
---
 .../devicetree/bindings/media/i2c/adv748x.txt    | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/i2c/adv748x.txt b/Documentation/devicetree/bindings/media/i2c/adv748x.txt
index 4f91686e54a6..50a753189b81 100644
--- a/Documentation/devicetree/bindings/media/i2c/adv748x.txt
+++ b/Documentation/devicetree/bindings/media/i2c/adv748x.txt
@@ -2,7 +2,9 @@
 
 The ADV7481 and ADV7482 are multi format video decoders with an integrated
 HDMI receiver. They can output CSI-2 on two independent outputs TXA and TXB
-from three input sources HDMI, analog and TTL.
+from three input sources HDMI, analog and TTL. There is also support for an
+I2S-compatible interface connected to the audio processor of the HDMI decoder.
+The interface has TDM capability (8 slots, 32 bits, left or right justified).
 
 Required Properties:
 
@@ -16,6 +18,8 @@ Required Properties:
     slave device on the I2C bus. The main address is mandatory, others are
     optional and remain at default values if not specified.
 
+  - #clock-cells: must be <0>
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
