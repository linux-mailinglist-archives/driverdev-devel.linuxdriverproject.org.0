Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A74E639524
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Nov 2022 11:06:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 007C58225D;
	Sat, 26 Nov 2022 10:06:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 007C58225D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MHqlnxSb63bS; Sat, 26 Nov 2022 10:06:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AFCED8225A;
	Sat, 26 Nov 2022 10:06:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AFCED8225A
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 947E11BF578
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 26 Nov 2022 10:06:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7BB8841D20
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 26 Nov 2022 10:06:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7BB8841D20
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bd_QBUs-9gi1
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 26 Nov 2022 10:06:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AFE5541D1F
Received: from mail-vs1-xe2c.google.com (mail-vs1-xe2c.google.com
 [IPv6:2607:f8b0:4864:20::e2c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AFE5541D1F
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 26 Nov 2022 10:06:23 +0000 (UTC)
Received: by mail-vs1-xe2c.google.com with SMTP id t5so6247136vsh.8
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 26 Nov 2022 02:06:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=EkLKKfAR5wqmVPeCqMY1O7lAxo0pbmpK+QeQEKfcsQQ=;
 b=S0Jly0aRGCX48DvVdGtlQon6I9li06adv8JUtEcIkT2LOy0EtF/hK0aNBQaIOuBke+
 sU4UiE0ersIKQEoTMmvsWwiSqNN6I1LVKlV8GBELgbHqcMXbct40lcpIar+IJEhQUd3j
 n3r5PlZXmDC937c9KgcQx1TTPv9tVsEO9uCOdv4Hqg6ja+lNOgWGGvP8wn3QRdt0e6QQ
 dvXEYJFXZjmjTAfwGbrY+WTzG2w2bz83ipl+K9gu7sUAz8qRGUR26lg0Qipm6561SMwZ
 E9C4ZALrx2VCAhP58vPofSOlxyNM1QNWlV8hngq9V86oNxdgJbc9apeIrwpjelvTRdSM
 v58w==
X-Gm-Message-State: ANoB5pl3xvF6Hh01KZo+GTSFE9PWzWjrq0pEHHjeAeBQOlQRMZCIKahm
 sr77JLRM+oxFd2vCIcAGRkh6ZVtBGBCCs0UBROw=
X-Google-Smtp-Source: AA0mqf7gigSLxC0QK1MM8IQRtViOAK+S60ZcQ8Hh3c28HQXHwvg1uAZh6Q3lewMVOnxRTsjMKMm+PEIK29a058a+KEo=
X-Received: by 2002:a67:c903:0:b0:3b0:7bc1:db3f with SMTP id
 w3-20020a67c903000000b003b07bc1db3fmr7005893vsk.28.1669457182423; Sat, 26 Nov
 2022 02:06:22 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a59:ccf1:0:b0:32b:6ae5:1eba with HTTP; Sat, 26 Nov 2022
 02:06:21 -0800 (PST)
From: nina coulibaly <ninacoulibaly13.info@gmail.com>
Date: Sat, 26 Nov 2022 10:06:21 +0000
Message-ID: <CACTFrC1k3-p7aW5hDRffiR3PfngLatmQALnoPVmNW8HLgjeW5Q@mail.gmail.com>
Subject: from nina coulibaly
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=EkLKKfAR5wqmVPeCqMY1O7lAxo0pbmpK+QeQEKfcsQQ=;
 b=YTDB2nS+4Q54VUwaE4eHyCKzCbd2Y37Yawe/JQO7uOiDcCdjLKei21I+Ny4rz8NzEO
 aZryMwN+iDimRNaPe42NCR1WwGp/0MlmXezJ3XrNynb8Ii2QwK+7zNk6g5M0cwG7s84+
 xtIFD6YK784zRXdAAPTv9id3llMy4xorXt13uqZfCjWGOwoaUUIY0doZJH2Z+b5MydFC
 xGflaG8+F1BHeZwtJc13pqgE1Rpuw/kiQoT+1XfNkb1fH/DqI+zVvbuDG9yZiWaLeYqA
 FxDHj04kpXkA3Z6sKptJe31Rg2ppfNThrDWYpOT0ONj5eiwZAkaRjh1Gfd9KVzKT/Z30
 zGaA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=YTDB2nS+
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
Reply-To: ninacoulibaly03@myself.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Dear sir,

Please grant me permission to share a very crucial discussion with
you. I am looking forward to hearing from you at your earliest
convenience.

Mrs. Nina Coulibaly
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
