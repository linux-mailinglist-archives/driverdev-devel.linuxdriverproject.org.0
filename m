Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3613A18D4A4
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 17:39:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 35D8A87BB8;
	Fri, 20 Mar 2020 16:39:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v749vVKTpxJs; Fri, 20 Mar 2020 16:39:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9700D87FD2;
	Fri, 20 Mar 2020 16:39:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6D4DF1BF278
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 16:39:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 697F286257
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 16:39:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PgIT0Hx6Wgbv for <devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 16:39:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0808186256
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 16:39:10 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MHX3R-1j2M6n4317-00DUqQ for <devel@driverdev.osuosl.org>; Fri, 20 Mar
 2020 17:39:09 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id BE877650123
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 16:39:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pjaQz4ViuR8N for <devel@driverdev.osuosl.org>;
 Fri, 20 Mar 2020 17:39:08 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id 5442C64E6C2
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 17:39:08 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.8.5.41) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Fri, 20 Mar 2020 17:39:08 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id 33D6A80505; Fri, 20 Mar 2020 17:12:04 +0100 (CET)
Date: Fri, 20 Mar 2020 17:12:04 +0100
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH v3 08/11] dt-bindings: adv748x: add information about serial
 audio interface (I2S/TDM)
Message-ID: <5e7da04cd003778cf525eac96d8bacdf4a245a13.1584720678.git.alexander.riesen@cetitec.com>
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
X-Provags-ID: V03:K1:bel314Y9mD0f/6iDPym16I+z8AN7eZOze/1do83YtBYUF61RkEe
 0GRdJxfN1N6txn1UprZ5H06rwReG5D9Ts4/FzwM6S1G37X8pZ36Tgx4RgPc0LmNXnnlfF1L
 PGqq/hTKzSKTfJzAkKEMI4+n+K0o3XHwNNwvwQPuLZ9mes32ejv9+ekHM1pS9xB7KWkWpO2
 OPtvi8HLESnpj38J6zDRA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:26IaKqw4xNE=:PaW+C/mKakAiww0NlrT442
 dLbRFEU8HCWQ2vw+LDx6V2wjRrSBPLA0tJpoJCpnPs5rhAxgzwSE7jW3QN+eE1uEiz9liGcoH
 UPOU2TE6XL9JVDtMoVtIvNfE3X21+6BzVFilNMelUYo3jXRo9XiNV6PRQktvK9BTyAnI1JOVH
 rk7NCNONzTnxKARWCjLyJKNCoWcwbpJMg7T4/noBgdKUu4TkREnAbY/rwWy3jNJVHaonsaWuv
 pg1dSOZO/5s1wHth/FiRw2LRBZIODhYQ16MjO0NRi+q2GMJ0VyzYu59WJu4FuW7NN8gZejPtT
 Of3JXvxUvVssVcq9R1nYeR1M7pRNsbzUJkXk9bcsNvyUZkhxOi7ROIwYk9yJVdEEjkuW6pwY0
 VkucHvct9dmuHAtNFKdOVni6BWsJg+5wZdoKKQnPE1U6Ve9fM3MmZSxIXLk3WJJUHWSQ3q3Vg
 TM8CfSap9a83FzeAQFVvIU9nlD4NbRdUu3cy6F7WUIMjhYiJzHZPEDjaha5xZy/CNvL5eIpsk
 tliFOUAE2NGkKE47ILdPn8JZUG28eV/p7Bo31XfbuNm8lWEWANX34CJZpIdJqFEIwybC0r5gn
 ii1OwROBlpb58VOfkdEo8t1CYqTrL003x62TM8yn/ckkLITtcUJePeNpJeKMaVUYm3aQG3Eo3
 RyzU0yTTIAUySkFeLKno5iGP+q5loP9ErKhmpuXzps5Q4fBvRup1LG2WwHDRmic03k6KqvmfS
 flF1bzHuMXm4Szq/QKdDsqfXDJb8oCAuwndq7JxP5CGjbwYEIzRLhKPNyl251X5Dg+V87CGtz
 HjJF3E2hXh+N9Y8GLUONYLX2WoDWifJD1UVJDOUrPvPc1g1cU/rW3tcBpLc70K0ahGPmC4C
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
