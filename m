Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADFEA221CB
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 May 2019 08:34:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 73DD688540;
	Sat, 18 May 2019 06:34:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W0eChMF7a7ET; Sat, 18 May 2019 06:34:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F06D488046;
	Sat, 18 May 2019 06:34:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D3F3D1BF405
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 06:34:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CBBC922882
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 06:34:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TiTnkMJ3+gbV for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 06:34:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 5A12921FEF
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 06:34:27 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id x15so4331536pln.9
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 23:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=eKe6mQqRIzmIAL3NH48NT4h4QYXymD38jNnChIfW1BM=;
 b=D8bcf6mOVVWuhxtlOYV82wNaZNpBanxO+avwGxv+FsAgKqgEJMjEwQVEGTsJoK4yJ5
 34Un4QzPJGiWMl0xy4zRDWaXR6vNnlEZE4bOmVIjZ2qcNxu+yQi7IM13GiaJ+xIa82jF
 AgHe2ozPdAcbctyUznTyXPJwN6OqvNSTjpjpCLp/3wqIU6ZvfRjEVziT4TFqs7YrCuFo
 s8znKfEr2M4WguFHEzyVWGMAssTFHue4MfJ95kfoJ0MaMCoGK6Ft3zRFq4WMBRZgu/ra
 KVM4GEJAb/bU1W7TK5sgB4RZ67s9v8aJPiYN2bvEcXnG1xhpY2xPJc+FQUIl1xELOBUk
 nszg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=eKe6mQqRIzmIAL3NH48NT4h4QYXymD38jNnChIfW1BM=;
 b=SMMURdHZBYOlxq3MOnOpvikF3ER2wMZpOZMoKjCV8sAN7xDpDqhvMO1vBhBeZbNe7f
 5Cg9Lox9HN1RQPZ23g5qLWjcUZg7x5hUPH/6UQ22ffjISiQlCJ07Qn5+DGeO5ZU/VdG8
 FC7sCQvtQMoM5z788kITVUt/wy/5cYeocsB4zAuFUqAiSVVDv6BeHPZ3j/Q64MYLCUu2
 l5FM6ZBLu57nEOgT86yJHomDi85vkhywL0yl/n17EHsDxSaRh2w2zh2ZVlUV6VBHfIEz
 8yk2ML5jmT8Yjgrpy/dp79kzMZdM6FQAf0r35EhAvdDKd1rmWvcw4DI/o4VN1fnB0ect
 nH3Q==
X-Gm-Message-State: APjAAAXW3Yd1EH2yzi7PTbv7J0uSEEfHAHPf141MDQGRO5zG1GiebbHm
 zMFDSS8/4BrwHyZpkVTE914=
X-Google-Smtp-Source: APXvYqzUwba2P7OrmWV5/zy/5X85L0OlHg2I/fXqKhGzPkH54H8SSW2HP6qfE9nZyUZMIfJLhMAg8g==
X-Received: by 2002:a17:902:9a81:: with SMTP id
 w1mr59449007plp.71.1558161266954; 
 Fri, 17 May 2019 23:34:26 -0700 (PDT)
Received: from localhost.localdomain ([103.227.98.84])
 by smtp.googlemail.com with ESMTPSA id h26sm14347874pgh.26.2019.05.17.23.34.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 23:34:26 -0700 (PDT)
From: Moses Christopher <moseschristopherb@gmail.com>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/6] use help instead of ---help--- in Kconfig 
Date: Sat, 18 May 2019 12:03:35 +0530
Message-Id: <20190518063341.11178-1-moseschristopherb@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, Moses Christopher <moseschristopherb@gmail.com>,
 arnd@arndb.de, insafonov@gmail.com, sparmaintainer@unisys.com,
 hdegoede@redhat.com, forest@alittletooquiet.net, yangbo.lu@nxp.com,
 christian.gromm@microchip.com, davem@davemloft.net, Larry.Finger@lwfinger.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Resolve the Warning that comes from the Kconfig file, which states,
"WARNING: prefer 'help' over '---help---' for new help texts"

Moses Christopher (6):
  staging: fsl-dpaa2: use help instead of ---help--- in Kconfig
  staging: most: use help instead of ---help--- in Kconfig
  staging: unisys: use help instead of ---help--- in Kconfig
  staging: rtl8188eu: use help instead of ---help--- in Kconfig
  staging: rtl8723bs: use help instead of ---help--- in Kconfig
  staging: vt665*: use help instead of ---help--- in Kconfig

 drivers/staging/fsl-dpaa2/Kconfig | 8 ++++----
 drivers/staging/most/Kconfig      | 2 +-
 drivers/staging/rtl8188eu/Kconfig | 4 ++--
 drivers/staging/rtl8723bs/Kconfig | 2 +-
 drivers/staging/unisys/Kconfig    | 4 ++--
 drivers/staging/vt6655/Kconfig    | 5 ++---
 drivers/staging/vt6656/Kconfig    | 5 ++---
 7 files changed, 14 insertions(+), 16 deletions(-)

-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
