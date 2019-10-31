Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A029EBA21
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Nov 2019 00:03:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5E15F868E5;
	Thu, 31 Oct 2019 23:03:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MSEEvv9NADAq; Thu, 31 Oct 2019 23:03:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 250F1868BD;
	Thu, 31 Oct 2019 23:03:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9DA351BF27A
 for <devel@linuxdriverproject.org>; Thu, 31 Oct 2019 23:02:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 96A6F2039C
 for <devel@linuxdriverproject.org>; Thu, 31 Oct 2019 23:02:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Xp7qrI7JpcB for <devel@linuxdriverproject.org>;
 Thu, 31 Oct 2019 23:02:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by silver.osuosl.org (Postfix) with ESMTPS id E4EC020390
 for <devel@driverdev.osuosl.org>; Thu, 31 Oct 2019 23:02:58 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id y81so8805704qkb.7
 for <devel@driverdev.osuosl.org>; Thu, 31 Oct 2019 16:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=M5MX8NnY04jn4IL4Hhx3WYBLegDCE1aMGvKEiYn4imE=;
 b=kKz6rJbigiB4GVY5iBC13AAZczzZWoLpxPYDnOawsuWAgv9XgZzKlsRpKbIUQ+teCd
 BZvwSj4jt0UW3C/o7FoENV/LopnIMNbtHH8ojXHEKZCs2Z7IiHmJPmNoh9Shy3VaxOTW
 E0mm9mAYCjmnc5c7oG7yrfQko9peDGMzDgBGb8aAEMa8YifivexorE1socOTwbh+k7mH
 u39hk5PbHx4cb9SZqv3OypvuY+ARDJtAqpYOVlUchY1uAPkkwkRf+i7P31ieG5DbWQFw
 BO/FKUKkClUWEag9bkNOxulVLbkm455Vln6Wds7Fr0GoQ8EiMUO0T3N53LHIwUJIUsYE
 dydw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=M5MX8NnY04jn4IL4Hhx3WYBLegDCE1aMGvKEiYn4imE=;
 b=BjoUqEmhUS72xg1KxlhAHVIZYhv1GVG9d7P6qnm5WcHMtz72tOgS+xh5M7NGpsUE5i
 UA+GTe6pe+pkqtCRpsKUOAf93MEntCW7/EHGV7DRr+BKc85kj8Sxx49JKCxZJVG/IwEk
 1bHQTt8YNbKimVyx/EGW94aGu9qZCj0C0mybhu+toQJWNis22eYDHoZRv9PAv27mMZJ7
 P5UBPHdrBnZSjxrWTqoWnC0J4l8MhKhoKlKoSf7WzGNokO7E3nI2AUFIS8g8ZY6+5Qsj
 EussWEJsdXfsmKnZGFyQrvryweUYmJThsiB7QSGx5PtG1XUD39NS2I/1cNAHSmPbT5PG
 Aflw==
X-Gm-Message-State: APjAAAVT8iYG850LwORju3HVF9SpnF06aGaqkJzjog0CwB7h7/3nBSRK
 RxmKGqSpt/LqKIryarm6YUU=
X-Google-Smtp-Source: APXvYqz1I2zayml7MofXfpt7vwo1D22VxS8xSVhmeM3EehlQ801FeRhRfoGsVPoOsX4xR2zvYEGCJg==
X-Received: by 2002:a05:620a:8c4:: with SMTP id
 z4mr2503208qkz.395.1572562977852; 
 Thu, 31 Oct 2019 16:02:57 -0700 (PDT)
Received: from localhost.localdomain ([187.106.44.83])
 by smtp.gmail.com with ESMTPSA id s67sm2633875qkh.70.2019.10.31.16.02.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 16:02:56 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 kim.jamie.bradley@gmail.com, nishkadg.linux@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org
Subject: [PATCH v4 0/3] staging: rts5208: Eliminate the use of Camel Case 
Date: Thu, 31 Oct 2019 20:02:40 -0300
Message-Id: <20191031230243.3462-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleans up checks of "Avoid CamelCase" in tree rts5208                           
                                                                                
Changes in v4:                                                                  
- Substitute constants in lower case to upper case                              
- Explain the reason of keeping a variable that is defined and it's not used    
                                                                                
Changes in v3:                                                                  
- Change the subject line of commits to make it more clear and informative      
                                                                                 
Changes in v2:                                                                  
- Place the changes on variable's names in the use and definition in the        
same commit                                                                     
                                                                                
I compile the kernel after each commit of the series to make sure it            
doesn't break the compilation.

Gabriela Bittencourt (3):
  staging: rts5208: Eliminate the use of Camel Case in files ms.{h,c}
  staging: rts5208: Eliminate the use of Camel Case in files xd.{h,c}
  staging: rts5208: Eliminate the use of Camel Case in file sd.h

 drivers/staging/rts5208/ms.c | 86 ++++++++++++++++++------------------
 drivers/staging/rts5208/ms.h | 70 ++++++++++++++---------------
 drivers/staging/rts5208/sd.h |  2 +-
 drivers/staging/rts5208/xd.c |  8 ++--
 drivers/staging/rts5208/xd.h |  6 +--
 5 files changed, 86 insertions(+), 86 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
