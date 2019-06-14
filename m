Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9764642A
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 18:31:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 44B6886A2B;
	Fri, 14 Jun 2019 16:31:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lzBmAQu5BDC3; Fri, 14 Jun 2019 16:31:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 151A5869DD;
	Fri, 14 Jun 2019 16:31:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 91FAA1BF59F
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 16:31:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 888AE87D51
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 16:31:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Psx2Xi+jba2X for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 16:31:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A11D487CAE
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 16:31:25 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id x4so3188621wrt.6
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 09:31:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=NSjWY72/27Nxf7scfOqq9fJamExCtzdkq18+lH2oiWs=;
 b=FzfVqTouAeJEjXvpO2f1HVJWD9ymvouREUbknXILHtapXUNj0DSle1t4ZYy/GNsPPY
 lqfC/zuujuAwp+TNWDNpTZzhse3p2hqjxcZ9iymWFHDM1V4JE8EPODo3GCF7PdLREQmJ
 UKwlw1r5SRPM2pyicrMiEa2DGgg+r2j/E7z7IEKPODX7FQ2KCwplq2hoibmS4rOKoCXS
 wn3FtE2Bnnk2XP5QP6Piab2cY5aMtmZieVeFy2uDcyzZ2m2Nt9cpKQFJtTymu9wZ3dOb
 laiEl/LvAXL5gqeXGsP6CjcLyjBhmj/YydlZ2AEVA6+QZLtuhDxWngHdjosXQHOq4RXA
 0apQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=NSjWY72/27Nxf7scfOqq9fJamExCtzdkq18+lH2oiWs=;
 b=rAzTcsrmckGOxT9wJQ7EmoCRo1IBncKNHhAm6kApe4gMZUgki6Q09RKL76W9dLxCSD
 y8H5mYY7YJZ9YkHOJ/j0zTtrAjuSNcloCLDywnXytwurn3PYoPL1p4lrJtgTtyclh+Ow
 ze1aclihiMWo5kvly/x3F1YDRsaUMo2L0FI0kM/EEfLtO0DTJJi6m/dmvFOj5Z5e8jij
 I4EZYkOPYzu8fTmkIvxjgkiC8KrHUp6AwExrRElBIPKCO7T+BP8SvBN5uMecwmsvG3ZX
 XnWAF+ttPGPE4/lJI8MNArDViBZ+OfTA3JiMoiVHARdZLcTdGkZpEtUZsxkPsjTNTy/5
 0LLA==
X-Gm-Message-State: APjAAAWD3ASO0YrLfx0c4KapqgfEZRluwDtfP5oZ6SMOTAfoeRk8q1Tc
 a+bldRDkOHlp8jrmcmNEdJA=
X-Google-Smtp-Source: APXvYqxzZWF80Pk8ck8ZMrwx8jNl4R0iWuKdJzK//3/wYsHze3qGUj3gxLO7PzuhjvOBKF6ZaPU/Fw==
X-Received: by 2002:adf:e50c:: with SMTP id j12mr9767121wrm.117.1560529884097; 
 Fri, 14 Jun 2019 09:31:24 -0700 (PDT)
Received: from smtp.gmail.com (1.77.115.89.rev.vodafone.pt. [89.115.77.1])
 by smtp.gmail.com with ESMTPSA id h90sm8321470wrh.15.2019.06.14.09.31.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 09:31:23 -0700 (PDT)
Date: Fri, 14 Jun 2019 13:31:14 -0300
From: Melissa Wen <melissa.srw@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Barry Song <21cnbao@gmail.com>
Subject: [PATCH v2 0/3] staging: iio: ad7150: improve driver readability
Message-ID: <cover.1560529045.git.melissa.srw@gmail.com>
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
 linux-kernel@vger.kernel.org, kernel-usp@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patchset solves readability issues in AD7150 code: use of FIELD_GET
to fashion improvement, make operation more succint and remove useless
comments.

Changes in v2:
- Remove noisy patch that reorganized registers definitions
- Remove else to improve i2c return operation.

Melissa Wen (3):
  staging: iio: ad7150: use FIELD_GET and GENMASK
  staging: iio: ad7150: simplify i2c SMBus return treatment
  staging: iio: ad7150: clean up of comments

 drivers/staging/iio/cdc/ad7150.c | 26 +++++++++-----------------
 1 file changed, 9 insertions(+), 17 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
