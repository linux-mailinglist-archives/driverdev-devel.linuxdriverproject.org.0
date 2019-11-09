Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 45455F5FF7
	for <lists+driverdev-devel@lfdr.de>; Sat,  9 Nov 2019 16:18:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 52995860EF;
	Sat,  9 Nov 2019 15:18:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vh2A-DaBt8iR; Sat,  9 Nov 2019 15:18:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3192085CA8;
	Sat,  9 Nov 2019 15:18:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D4F31BF5B5
 for <devel@linuxdriverproject.org>; Sat,  9 Nov 2019 15:18:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EFA9D85CA8
 for <devel@linuxdriverproject.org>; Sat,  9 Nov 2019 15:18:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 01-vVycOkIqo for <devel@linuxdriverproject.org>;
 Sat,  9 Nov 2019 15:18:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9C17785C47
 for <devel@driverdev.osuosl.org>; Sat,  9 Nov 2019 15:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573312675;
 bh=uP/XbEEvf4mcHKe6aF2GqY6Yix9EhtEn9u4SahQ/Dc0=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=gMKCYmU2Otd2VMataBJYbfnFOr++8zNwFdLsbKGI+UVoEiW8BTUx9+xaec3YohN4F
 3Itupw4ymK1TRzWIcTkFNfm0iM8G6a1NAivAJ6kCGAV9m0YbuI49/BAl29+ZqKZsry
 3PE2t7X0nUTbxb3ooZRUSagqAoqSOKJSzQmpkEJY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([79.150.153.135]) by mail.gmx.com
 (mrgmx105 [212.227.17.174]) with ESMTPSA (Nemesis) id
 1M2wKq-1iUYQg3MNw-003PQy; Sat, 09 Nov 2019 16:17:55 +0100
From: Pedro Ortega <portega.kernel@gmx.com>
To: 
Subject: [PATCH] staging: iio: adc: ad7280: Add spaces around math operator
Date: Sat,  9 Nov 2019 16:17:28 +0100
Message-Id: <20191109151729.3792-1-portega.kernel@gmx.com>
X-Mailer: git-send-email 2.17.1
X-Provags-ID: V03:K1:Eyrv4sqPGuCIKeoNeulmdzBC1DkFdbkU80HEIn24yXyYOkOAu3R
 q3b85dMisGT2zJRlI+pyUGyGpsj6tnfm/AdWZpZCsm6oIYNT/xB2eIyIWebllfettqWH982
 e1vCHzNWxolx0K+mPxQiY8MU3SWWfO2ATaJPwtZdOa8DDmtCRQP/AZwLbkB19Z8g2kIX9dI
 WTn/f7iyQWXBnWs2HCVMQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:Ig2aZhlc3Yw=:W8QvoQ4ql6WL3we9fv05DQ
 lIoBfAv+OMKUMqeNRm3r3aWo8Q1ilJQsInYqCT4gt5L/W+IbbyEd9FhEOBUqL+DYRopFXt8p0
 NyMZzJSFZnADp9SyIHtmQdws31H5DcvJba/iSqQkUiabdpUVjGcMV8tjHxa1Oao/9cnsNZiK7
 eOCJjLCYiYMaW9HN7JiNYX8ZcMC1u2mxaOY6K+YRRBZc/RZFLfKwcovL73Kbxcdn14fKGaEvX
 cQi8oVDlzWwjdQtqayqjH3kYMjNUuyq+xkT1dtl1doSjVlTR+YfaJWM5UtoiH+e2NXdMTk4uL
 qLMxU6YcRPph1dS2T8t07iJNzci+z05ZfHnP/V1aoG2X3zghHqhkzN1mrRtIYqw0QbPA46/sz
 prRItVkbxJMbJnPDuDby/7vmA+rXxMMVExEiKqY6xuvioyPDmU6LSuNqFwGhHBf0aKbmAQkgF
 irkJZx75oDgv7+f+D+bP2tqJYeN26ikO/cAID755Ec+HBm1uG0l+J+lWSIGCDdTYQsojX3dS0
 GufU0d47uGvOVGIdPr/Vp+wU1tuZGWLelZ3E9mQLv/j+vtXSLZFvUP4mmR3JRbSHZXBXsEqUK
 klzDXEU2kPXvFnIiCUYZ+Ku1XaNSdqLq5uttiAbl15qX6w6iA9nhYaw0iFwufzw2911RrqItU
 3y7/yygCIvV5M21KvBmjmtbXEVnt962J9Ft4uThLPro3NF+I5n/8zQ+6LgkZUgonXCMzFcRJz
 6lAWDoPWbXWH3Nfm5/BH0+PqgPDNbXND/X5SrgDa99RjT1OPeEV9IEHC1KmscrBZq3rQt45On
 Lm220OH0Ua6ILEe0zlImQJpfFAEOn4F7to8AKyPfGQ9TMiH95MNqFa/0WG/n2U/vrvPJY5n1X
 VhgFWOBhh6BYpaKaLSKPkHXgHVYJfG7IC3QCC9Q02sB6ACtQS3JAxJzV4MIc5KLtIyC3C+cWg
 ZrjHG6mej8HqrPEFTwbnuZg84ehlJkwLLN/scp3kRMDVOWJRKfdbYvJ6QbufGqW6NTf3eISG9
 dqI/rG5mBxgHJMYY//zHQesiWNTA/3Bnya2wx1J6UcFgn4bp+djC5P0IcgrgMpSagnwzivwZS
 Txch5xlKuGHvqGjelbNQmLLf8wJsYH1h9kAJr0KO3rd+SGMarDg+emSLtnaiNoGL4VN684jR7
 pSPOPKVUA9SmAzalUR4wWcy2OzL/JUXcl9Qa/oI/GElC1fcscy7d61oLnoNgBTVlGcPkcZ6iN
 Zk+lMtl2qG/N4VOE7t3SlmJNGvK8s30+rcCHui+vcbRGpiC9XFyCt1foyouM=
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
Cc: devel@driverdev.osuosl.org, Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, portega.kernel@gmx.com,
 linux-kernel@vger.kernel.org, Stefan Popa <stefan.popa@analog.com>,
 Hartmut Knaack <knaack.h@gmx.de>, Jonathan Cameron <jic23@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add spaces around the minus math operator to increase readability.

Signed-off-by: Pedro Ortega <portega.kernel@gmx.com>
---
 drivers/staging/iio/adc/ad7280a.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index 19a5f244dcae..34ca0d09db85 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -825,14 +825,14 @@ static irqreturn_t ad7280_event_handler(int irq, void *private)
 }

 static IIO_DEVICE_ATTR_NAMED(in_thresh_low_value,
-			     in_voltage-voltage_thresh_low_value,
+			     in_voltage - voltage_thresh_low_value,
 			     0644,
 			     ad7280_read_channel_config,
 			     ad7280_write_channel_config,
 			     AD7280A_CELL_UNDERVOLTAGE);

 static IIO_DEVICE_ATTR_NAMED(in_thresh_high_value,
-			     in_voltage-voltage_thresh_high_value,
+			     in_voltage - voltage_thresh_high_value,
 			     0644,
 			     ad7280_read_channel_config,
 			     ad7280_write_channel_config,
--
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
