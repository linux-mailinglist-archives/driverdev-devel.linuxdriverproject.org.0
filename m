Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A15541A4463
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Apr 2020 11:18:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C0E178826E;
	Fri, 10 Apr 2020 09:18:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ll0cjaBtemtY; Fri, 10 Apr 2020 09:18:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4883D881D9;
	Fri, 10 Apr 2020 09:18:44 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B56201BF35E
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 09:18:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 531F12035E
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 09:18:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YTb53k7jhvJh
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 09:18:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 453192000E
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 09:18:41 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id u13so1139014wrp.3
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 02:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ku+khEbLihjF9fg057gbAqc5jbRWedm5U6Mz+3ODjFM=;
 b=mGW32z6eWUYqU5uTWZ5H6DqLr8n9qeS3KA0aAaQ+09xh++iE6XOhXfGTlcUO6LE0m9
 zMNcL4eoq3RibIxwA16fJiauW/LODZzyb75H2VV4iX2kHmhfuGfBAyKVuUMO2panzZw6
 EP+PITZVyCJBGVWyi7fTLErMUCYdB4ki9wwtfuWYk9cottPPAsMMFxLNcZzu7t8W7+nr
 X1zxtilAEWTCMVrJ4xqIt3wsvU+AJhzBxv2bZ5GeV8EZ7pGwU7B/PRVrU8Z7FpfqhaXy
 HjS9Vkzw1fEYaUSqDNng0+zaUz/8GuSh/HZrz9F/xx3JHYooDPwsDrNofBfhmmp1+fZb
 YgFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ku+khEbLihjF9fg057gbAqc5jbRWedm5U6Mz+3ODjFM=;
 b=XHbJaWKL8aGcQgq9u/strqBTtZn9cmD8LNgeK3t6CkxKsqiLMhcjsAXkLDRF2iA5ZZ
 WuwRGHGEFFscIVtnfqYwHlaHe8ivPtn8Gmlg9kF/axwukTKvqoISwOBFGZPXvjv7+d1l
 kORjwu+kC9QqQKwQDx04/GizfYcdkAPETkGYoRryq1vURUbGsPCpBt+KL69DAOsJItqA
 wJoOydyH83ZoGoGmwlXrPVO3ZPpPh00CL5veBwoRpN1Q5VrkcUzsY8jLT2MI5zc3RwqU
 UdUsjiX1rUYLTyTCg8GGJTb1vCIsCWgx6/JszkU7Q66SjzyaIVrUpLcouQPcUYTD9JFF
 pZUQ==
X-Gm-Message-State: AGi0PuabOwJgfKH9C2IK7i8zz+ouEygZ3SSs5dvenWnTxN5OmQ0zmw/F
 NFMnnKuqQ+Thpp4terMouscAoJml
X-Google-Smtp-Source: APiQypIE0Zfw3JN4FA7j7hDOmg1yf09UhaE0ks1W3LqGKp4iq+SV2fZNDjk/Y8ZHePPA5ALfJCGqjQ==
X-Received: by 2002:a5d:610b:: with SMTP id v11mr3634781wrt.212.1586510319612; 
 Fri, 10 Apr 2020 02:18:39 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id p3sm2049066wrq.97.2020.04.10.02.18.38
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 Apr 2020 02:18:38 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/2] staging: mt7621-pci-phy: dt: bindings: convert bindings
 file from txt to yaml
Date: Fri, 10 Apr 2020 11:18:34 +0200
Message-Id: <20200410091836.13068-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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
Cc: neil@brown.name, devicetree@vger.kernel.org,
 driverdev-devel@linuxdriverproject.org, robh@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In order to get this driver a new chance to be properly mainlined
convert bindings file into a new yaml one is missing. Previous
bindings got the 'Reviewed-by' tag from Rob Herring last year
in a second attempt to get this driver mainlined.

See:
 - https://patchwork.kernel.org/patch/10878071/ 

In new version the use of the '#phy-cells' property 
has changed a bit. Before, we were using this cell to say which
phy was dual ported but we were using three 'phys' and its 'phy-names'
properties using instances inside the driver code making it a bit
difficult. The fact of re-init registers and so on calling 'phy_init'
for the phy1 was also introducing not stable clock signals on hard-resets and
the kernel was hanging sometimes. Now we just use two 'phys' with two
'phy-names' nodes and we say which port is dual-ported (phy0 and phy1
share the same phy and it just use different offset in config registers to
do the power on. The init process and so on shall be uniq to avoid problems
so now the driver controller achieve this situation.

So now, the pci controller has the following:

pcie: pcie@1e140000 {
    compatible = "mediatek,mt7621-pci";
    ...
    phys = <&pcie0_phy 1>, <&pcie2_phy 0>;
    phy-names = "pcie-phy0", "pcie-phy2";
    ...
}

And the phys are defined as:

pcie0_phy: pcie-phy@1e149000 {
    compatible = "mediatek,mt7621-pci-phy";
    reg = <0x1e149000 0x0700>;
    #phy-cells = <1>;
};

pcie2_phy: pcie-phy@1e14a000 {
    compatible = "mediatek,mt7621-pci-phy";
    reg = <0x1e14a000 0x0700>;
    #phy-cells = <1>;
};

Doing in this way we get a deterministic behaviour and stable pci
clocks for both soft and hard resets and the phy driver code got 
simplified a lot. 

Rob, It would be nice to know if this is a valid approach.

Thanks in advance for your time.

Best regards,
    Sergio Paracuellos

Sergio Paracuellos (2):
  staging: mt7621-pci-phy: dt: bindings: add
    mediatek,mt7621-pci-phy.yaml
  staging: mt7621-pci-phy: dt: bindings: remove bindings txt file

 .../mediatek,mt7621-pci-phy.txt               | 28 ---------------
 .../mediatek,mt7621-pci-phy.yaml              | 36 +++++++++++++++++++
 2 files changed, 36 insertions(+), 28 deletions(-)
 delete mode 100644 drivers/staging/mt7621-pci-phy/mediatek,mt7621-pci-phy.txt
 create mode 100644 drivers/staging/mt7621-pci-phy/mediatek,mt7621-pci-phy.yaml

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
