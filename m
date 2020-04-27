Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC611BA289
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 13:39:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3847B87D5E;
	Mon, 27 Apr 2020 11:39:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CR2hGyVqKtlK; Mon, 27 Apr 2020 11:39:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 97FDD878F1;
	Mon, 27 Apr 2020 11:39:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7470E1BF97A
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 11:39:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6E2A3864F6
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 11:39:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QZvzAzIvwqcX for <devel@linuxdriverproject.org>;
 Mon, 27 Apr 2020 11:39:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f194.google.com (mail-il1-f194.google.com
 [209.85.166.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F0CB9864A4
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 11:39:42 +0000 (UTC)
Received: by mail-il1-f194.google.com with SMTP id c18so1072238ile.5
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 04:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=F+HbPvxQnRBlqBFKy/zn6110uxUPAWY6eSsMY6+ckPY=;
 b=otQPW03GuxV5tlSnBgWhrPvpDFZ0566QHA/A/+8X71+ZqoBnXKWZIEJ+yYT2r1D4Nh
 pHMyC8HALozmzduDFM3lcaqw9GOqK+eAU4Ptmk05ExC7I/dl67zI+loxv2RSln3z0LeO
 NNC6WHC84cdjJQzxxUL8nFb/1rvZ+krJ3C8Q6+d2aAFBgSdVs127N512U4pIHQ5HqlCN
 iaCOVS0AM3ZWVni5usoId1GP8mqxg2LBFAnzvqnzbzf6BbIIkAcjmXiEG4NRp6g/W0t8
 S5ZOl86eOIImJMNPJn4pY+8zHKWIQKATJtcUBASIhKD8Rcm2avkT0dTr41MBVptxT3YZ
 5h/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=F+HbPvxQnRBlqBFKy/zn6110uxUPAWY6eSsMY6+ckPY=;
 b=I80F6FLaAxY0BmME5avc1nPm67iRQ6aw6Fb4QAvC9OraYZTebi0K/Jh1FHXCc1HZU5
 pWySkkQtPkkWNDX9paUdw6gJJdRviKlBo98E87UPAETL7E80m1yDVCxNcvbuIkQkG6xq
 gw3h9tBmmH9iSNE37Sv+laDD5vVRxvbfHO1zvXTJZW9K5SSpheBo3Ufn5wgC7ufM3060
 hV+G+Jpj6mUIy73LOUJjugNLDs+4JyI6Z4ExYndG0Pv6IiE9EL98oRXvhnbnrz6V6L+i
 7yJb3zcbgNt5wyNIPb3VYWz61xf3E/oI9ze1UXeQhV/EF+D2u5lBw/WgMtFZynE5YOdq
 ZfBw==
X-Gm-Message-State: AGi0PuadPMN0ADgCy2sSYAnrmjX425pyBgjKIkdNgFf9r1nmR7jGMJ9L
 cjhIaOk8gpwJEk7rzdlorWXJjtq+BN6+8f/fYrM=
X-Google-Smtp-Source: APiQypKldPXjNoCcx1QriT2cvETtcERc4TvHKD1sRWjmNX7OW40vhtC57uF3jR68V3BfbCLAP/UWJr20132RFw89Z10=
X-Received: by 2002:a92:50f:: with SMTP id q15mr21206116ile.4.1587987582235;
 Mon, 27 Apr 2020 04:39:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:8f89:0:0:0:0:0 with HTTP; Mon, 27 Apr 2020 04:39:41
 -0700 (PDT)
From: Ruben CONVY <andrewboccc@gmail.com>
Date: Mon, 27 Apr 2020 12:39:41 +0100
Message-ID: <CAHVC0+CacHa7OW=Yw0U6PBayJMAPXbYtxBd2f3WnrNtzPAXYmQ@mail.gmail.com>
Subject: Why continued silence 2
To: undisclosed-recipients:;
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
Reply-To: convy0090@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Did you receive my previous email regarding your family inheritance?
Reply strictly through: convy0090@gmail.com
Best Regards,
Ruben CONVY
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
