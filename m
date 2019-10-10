Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EFCEFD1FC7
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Oct 2019 06:49:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 059FE87D2C;
	Thu, 10 Oct 2019 04:49:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FGj9QRnWBH8F; Thu, 10 Oct 2019 04:49:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B9E5C87739;
	Thu, 10 Oct 2019 04:49:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 134091BF5A3
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 04:49:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 08E4487739
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 04:49:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3DFGl+whjilP for <devel@linuxdriverproject.org>;
 Thu, 10 Oct 2019 04:49:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 689848771E
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 04:49:31 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id h195so3070160pfe.5
 for <devel@driverdev.osuosl.org>; Wed, 09 Oct 2019 21:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EW2+5LFnHdMStT1dkkpA3jxVK45XROxzbrFNtkIJRsk=;
 b=FH/TRfN2aF35YrrTZyPN8RZZb7vzilxg7Zd3Jh83FAqN0WRCTvQrfY+HWd7wDUY1kk
 urVszhsRNOMkI6oOsBw/X3KGgW29MSONMet5cp/MVnP4XDuhS9WbQ2QAtOztoLqKKGJr
 opwJ8XeVqfCzE3kcneWuHLtFFW2UUqvwFFuZhGUOLjzhIXGp3zmlLouR+GH+lybtYX7O
 CRoKRRk+R13nKYRuLpgEsbsizt4r86FjnE6zuYhvlQCudx/pqnm8klejnEDD1Ejwhl1z
 6tuZZ5wuHtkIeHnoIp1W8Y1MNa6wJ4qqjymHYyRvFJPcUb3HtAqDczZ/0ospqZvkyF23
 bfFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EW2+5LFnHdMStT1dkkpA3jxVK45XROxzbrFNtkIJRsk=;
 b=mxxWmqoIAU4F5sHzXoU03IZmdMPQHCeIskHOtLXidwGYRGtyKlForNaCHd29cT/8+L
 SVtvVB9CCibAttTow2L/gPrftYe56bWpBR7fpHVFtZEDrQa22EVGNhFUWBxE9ryo819P
 +6swdHCtUgL5teqQZWHhhsVvvecIkBJohsvMQ4QeauVNklRHQX1R5BL/I89cMVmgRitR
 dtpk8aMapnA+Fjg8XHc9ivOqYVDGibBs1ngBcXmVTcwr47+ePlAAk/O1kvGWeuQkQ/92
 vnHrzLI9V/o9i67RnShiHuPLiP/m1ee1yx33rQHWRPFlHAp6jGmrP8I75uQAhzxgt4kc
 sGSA==
X-Gm-Message-State: APjAAAX6S+6QAnKLuGDlRP8uniGS6DQ2wYjnq6GNczcaCVShB7hCDEAt
 evlMXkb7ohvGB3bSP2puj2I=
X-Google-Smtp-Source: APXvYqyXQjItBrD3LII9zBw/+oYW9eULSETZmjKnm81v6Zam2PKl1ndnuxp31Ue8Q+aLcxisq4VF+Q==
X-Received: by 2002:aa7:9907:: with SMTP id z7mr8102923pff.133.1570682970937; 
 Wed, 09 Oct 2019 21:49:30 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id q20sm4520090pfl.79.2019.10.09.21.49.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 21:49:30 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/4] staging: rtl8723bs: Style clean-up in rtw_mlme.c
Date: Thu, 10 Oct 2019 07:49:04 +0300
Message-Id: <cover.1570682635.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patchset addresses multiple style and formatting issues reported by
checkpatch.pl in drivers/staging/rtl8723bs/core/rtw_mlme.c

PATCH v2 of the series corrects the "patchest" mispelling in the
original cover letter and provides a clearer subject line.

Wambui Karuga (4):
  staging: rtl8723bs: Remove comparisons to NULL in conditionals
  staging: rtl8723bs: Remove unnecessary braces for single statements
  staging: rtl8723bs: Remove comparisons to booleans in conditionals.
  staging: rtl8723bs: Remove unnecessary blank lines

 drivers/staging/rtl8723bs/core/rtw_mlme.c | 157 +++++++---------------
 1 file changed, 48 insertions(+), 109 deletions(-)

-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
