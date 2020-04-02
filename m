Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A69C419C951
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 21:01:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 71EE08838D;
	Thu,  2 Apr 2020 19:01:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mdbErinEAhMv; Thu,  2 Apr 2020 19:01:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ABF6888366;
	Thu,  2 Apr 2020 19:01:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4413A1BF41D
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 19:01:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3FC6F8752D
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 19:01:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 88AM-5NhJQ4A for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 19:01:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 31F048744C
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 19:01:27 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1ML9i0-1jbCGl0lV4-00IEUT for <devel@driverdev.osuosl.org>; Thu, 02 Apr
 2020 21:01:25 +0200
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id E7007650ABB
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 19:01:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nvJ9luXhFEnv for <devel@driverdev.osuosl.org>;
 Thu,  2 Apr 2020 21:01:24 +0200 (CEST)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id 7A6DB64FE1C
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 21:01:24 +0200 (CEST)
Received: from pflmari.corp.cetitec.com (10.8.5.12) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Thu, 2 Apr 2020 21:01:24 +0200
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id 34C0C80505; Thu,  2 Apr 2020 20:35:06 +0200 (CEST)
Date: Thu, 2 Apr 2020 20:35:06 +0200
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH v5 8/9] dt-bindings: adv748x: add information about serial
 audio interface (I2S/TDM)
Message-ID: <337b689519806178458ab77385c8ac6f510cb0da.1585852001.git.alexander.riesen@cetitec.com>
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
References: <cover.1585852001.git.alexander.riesen@cetitec.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1585852001.git.alexander.riesen@cetitec.com>
X-Originating-IP: [10.8.5.12]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A290D7F536A6C7266
X-Provags-ID: V03:K1:L2O9Xr/CTUY42jaH/7kPPqUcBYn6z/Q8whFhKjyjPS4c8GikicH
 C/s6KxKQZDnTqUV/akmnwdGyZpERfnChkrEmhs+hf2abTCx508MLpgTka7pxzBhnYJvJuqr
 jQjanM2WoAL12ig9KPzomCh4jSnztV5sXbTiPkuBy5humKClAoN8dMB9O5NKiM3QTcQkYsl
 Pf91cnJnWhD9NfKPP58BQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:o3mmpeYV2uI=:HSQsTLKbn1vqlAVydQcTNk
 K+15rGsJFboksBfuunIU6s4NCPlCbLwpTGWuajp5onofqlKnu+CBn3MCwaMy8/956Wlb72tav
 LeGIaMhdZNVEnwak40ZBcktVVu1LNmII8/oS+kBNDWh8hODR52JBFXn5OAHkh0WWC4mLQZNwq
 m6Kpvg8aGpt/bM1TqTF/sJXQKRM/LHJrK7iMwv36G36loWjuVakX8hZDfSpKFE+r89XRfk6xS
 yT6/5uaj1Si9AWcdEQ2CK8TYIthjWnXq0bTnn+8ViT+z23S5G5Pqn5RqCKkQckUrgdHZk4SEb
 ctXbdqeAwlDLVvyx4wWxZBs8q0PpInpLbJ797hE/E+0HsAFqYSzWAPG7Wrrv5Meb2tvq4F9j8
 53vMFCWJp/spd7BmdA5c5AoMTcQv5fExCimG7tcfhc4VES1K3u/s+2rC9zXi3s7+gJcHGsY/d
 LcDbH9ZIqf94ODYXV+hPEZaZTMAsGW7hETsoULmblWrx9sef4NRnj+/6dCh7g33F7H9IQwbms
 9qpEutLPJpuU7TY5s9Lzumr3uRo5WBdgZe6dEFsUNJJAHZuG4V6pteW1MpZBHMfmvlCO5ZSvb
 NjucBzWCUX7lnF7ZzbnXLFy2Q5SMge39Gf3XQxf79F7liabIZZ/otYwYzWBPhVBgsG15bkN3k
 z7SgvxlZzCZgjszEptkYQZJVu/xryAli6LWxE81WXRHb2BKRVfxymDfiS7b08tCL9vsaFbQbQ
 bK+DNvoLZhQWbUOaZiyYUDnk9QwsJvOPXrtodpDfmEs5Ry1h/C7qZtV7r0GVIRYfyQ1a1rj4w
 AgJHZcUMX3jW3jTjzoUe8bQyo1tffdRPUtbMae9+zmqm1OXggsxs/jCyDJb4oXGhwd6hVWH
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
