Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 782AC790B40
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 Sep 2023 10:36:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A021417C2;
	Sun,  3 Sep 2023 08:36:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A021417C2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gpAfofPVx6Da; Sun,  3 Sep 2023 08:36:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C8706417BD;
	Sun,  3 Sep 2023 08:36:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C8706417BD
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3BBEA1BF36A
 for <devel@linuxdriverproject.org>; Sun,  3 Sep 2023 08:36:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0D3D840190
 for <devel@linuxdriverproject.org>; Sun,  3 Sep 2023 08:36:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0D3D840190
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4mC04oO4PFUB for <devel@linuxdriverproject.org>;
 Sun,  3 Sep 2023 08:36:47 +0000 (UTC)
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 55A02400EC
 for <devel@driverdev.osuosl.org>; Sun,  3 Sep 2023 08:36:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 55A02400EC
Received: by mail-wm1-x344.google.com with SMTP id
 5b1f17b1804b1-4013454fa93so4438745e9.0
 for <devel@driverdev.osuosl.org>; Sun, 03 Sep 2023 01:36:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693730205; x=1694335005;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=LQLO7aaH2b9rfQpQmLo19KMj34+AhfX1whSrT748ylE=;
 b=JPfdeM5dkFBWFxC3/ai/0OHyVf611pr0wNBClXMyInLhAZXCMpY3uKmO+KXrZrB6LJ
 15ltgDali6dzTWrbHhbJXtscjbF8nN6rlv0B8l+NwhjkR1vmNV4Ip3+p8f8uz+hkpD0B
 BqEupLGXYkSBcqjlOd6QGTRNDoLzH66CNPOwl2nTmJb54yp4L8wTfl+8DuKA6f4udGw1
 up4V2R7a+YuhJPfPXz8qfDG6WcPnhZYjz/WKVLiX0pPdlwzO9gYn28yVbrg4eF2hO3Ix
 wy1GRtp4I/y8695/zV09+eTQF3sQakMaWnNmToOC/TStW16nFfqHdAOFmFwLTkfwZiTd
 LfHA==
X-Gm-Message-State: AOJu0YxT1Azk1QEKVXyUXZRl+UMLncWoMiadYtmmXma0wBMAm3ew6hMv
 yUTlqEGItPrwzberewMrHft/WDrMaVZ1UOvbDQ==
X-Google-Smtp-Source: AGHT+IHzRF8Raaa027tGXfk7dO62krXvPlJbebmvN5pnVHSN+ne3qot7+U38N/3ykD6KPd+hyStm/4Hyv7yw+GiR8VI=
X-Received: by 2002:a05:600c:205a:b0:401:264b:5df7 with SMTP id
 p26-20020a05600c205a00b00401264b5df7mr4782063wmg.35.1693730204836; Sun, 03
 Sep 2023 01:36:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:6945:0:b0:319:652e:95f3 with HTTP; Sun, 3 Sep 2023
 01:36:43 -0700 (PDT)
From: Hussein Khalid <aymanabdulaal989@gmail.com>
Date: Sun, 3 Sep 2023 01:36:43 -0700
Message-ID: <CA+NzZL9ZVC+faBxLavHgneCfUcOsiE+g+bCasNJEf5PScbtekA@mail.gmail.com>
Subject: Loan For Business
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1693730205; x=1694335005; darn=driverdev.osuosl.org;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=LQLO7aaH2b9rfQpQmLo19KMj34+AhfX1whSrT748ylE=;
 b=THLx0OVROB6ghftjlidsRwzqlTQObbn6sWsd4zNvKJnTBcLPNBMoCsD/rFr9lOrZ+c
 fMgY8Vwc92HaW+bPpRY5fBTnXIQE8PeIQ3KyDe0ygart8FSMbdJkwdOGOxTd9r+Yw6oz
 Drg2x+uGUi0O5pk8OuXhGAn8mW65A2ljZuD0BtY6Pr1m08hrOm265Up2Y73Ey7xAMnOz
 oZSK87p8lTJNXoSjLJe2IOoqrEM8lHspauevuyNhPMWbCzteoWiv3VNAucdRinXyFnIW
 3QmAHYS5a/i5PJLNLgWacryoAqCihJeLCHIW3hInFXm5MrBP5f1vDr6WGVaPei8Ks+Az
 ERdg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=THLx0OVR
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
Reply-To: ran32ke@aol.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Hello,


My client is seeking for someone who has a solid background and idea
of making good profits in the above mentioned business or any other
business in your region which involves co-operation of JV Partnership
funding.

He is willing to provide funding or Loan for any viable and
sustainable investment project.

Let me hear from you


Kind regards

Hussein Khalid
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
