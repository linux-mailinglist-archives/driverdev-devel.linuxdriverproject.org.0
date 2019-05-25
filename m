Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8508B2A242
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 May 2019 03:26:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 97C4E86E91;
	Sat, 25 May 2019 01:26:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AMM5iL5PPiTH; Sat, 25 May 2019 01:26:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 65B8B86E51;
	Sat, 25 May 2019 01:26:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4F3971C1639
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 01:26:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 47CA286E51
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 01:26:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4eN_ZnxAcen2 for <devel@linuxdriverproject.org>;
 Sat, 25 May 2019 01:26:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DC27F86DC0
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 01:26:16 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id p18so10124060qkk.0
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 18:26:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=tWKnOMZxNyMNwzYk45X7EaXGwybTUYTh1qQHOS+4w8A=;
 b=Qk65FkiK2Q5mWeOxyFhgyouEzc6P0t0hBNf4R9rNIc7dksuqrzSopGOmE3M4R/axHj
 WZ3Xb6oA9FrdMGDhMQuh+FTTWcQTv7aDluYW9ION7otI8IPR5WWWiyF4kj/LOmbSJaYm
 wS/oPl9UxScC/6c1fG8Z1Ki0fFZy7jjsee65WpvzXsZaJuZJoeV1W0lcy63X0b2HMWRm
 e++kgwXKPpOsbgQRLabjemThTY923aoBQrTSlf1vFimBwEB5vr90w5R7mcKfI7r2rdus
 WhaFMX3V9FZxIewqCZp3M3TBIQhU9BNi+QXPdqeliLwO/zWBczu6g5/cuILOzuQMl6I5
 bNSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=tWKnOMZxNyMNwzYk45X7EaXGwybTUYTh1qQHOS+4w8A=;
 b=UjKLUctD9Jc3zFhMpUwOgb1peQsRBJNluWMjtTqRuxwqGlu4iu1tLnSB24/1pPDSWT
 2bgbl7DboqkmHLc3TJIahhTpDsCHU3EIQXD76E4JD6/79Um6MP8YOEmksAPf6XOMzizB
 NRime50cDIMYtfB/NGAJue4LlaIaBBK+8KNnKMTsWZRG5yaLW6oUBC/5mbMX9G2cfOIR
 9n+TjgFgghf4lHGIUtH1hXtgLq50rRYggclI0vw6BNQt0mytgs336a+8tE0TqK+CSoR+
 FS4euHDGMS3n/E54c4I2jNXX+Eb5zsTzcD+sAfpvfYa1vngbsjM7eFAPVPEXG28UEYe4
 DCtA==
X-Gm-Message-State: APjAAAV6G0xS6f1Yy0v3FkXle3uGsgkhnIdC41j5HS3jhgZElGNWRoxe
 ipnqJkivxQvKAwc442S+nsc=
X-Google-Smtp-Source: APXvYqw9DhZ1ZuGEJFQ3f7WQMR3SVYv51bgucQVPQlBA6Yokn4aEqtmJsDlp0aNsEydxEZgm4vHq7g==
X-Received: by 2002:a0c:ae0d:: with SMTP id y13mr19569814qvc.114.1558747575906; 
 Fri, 24 May 2019 18:26:15 -0700 (PDT)
Received: from renatolg ([186.220.0.156])
 by smtp.gmail.com with ESMTPSA id c16sm1655731qkb.15.2019.05.24.18.26.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 24 May 2019 18:26:15 -0700 (PDT)
Date: Fri, 24 May 2019 22:26:10 -0300
From: Renato Lui Geh <renatogeh@gmail.com>
To: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
 knaack.h@gmx.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
 stefan.popa@analog.com, alexandru.Ardelean@analog.com,
 robh+dt@kernel.org, mark.rutland@arm.com
Subject: [PATCH v2 0/2] dt-bindings: iio: adc: add ad7780 yaml and
 MAINTAINERS entry
Message-ID: <cover.1558746978.git.renatogeh@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20180716
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
Cc: linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel-usp@googlegroups.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patchset converts the old ad7780 device-tree binding to
the new YAML format, and adds an entry to MAINTAINERS.

Renato Lui Geh (2):
  dt-bindings: iio: adc: add adi,ad7780.yaml binding
  MAINTAINERS: add entry for ad7780 adc driver

 .../bindings/iio/adc/adi,ad7780.txt           | 48 ----------
 .../bindings/iio/adc/adi,ad7780.yaml          | 87 +++++++++++++++++++
 MAINTAINERS                                   |  9 ++
 3 files changed, 96 insertions(+), 48 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml

-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
