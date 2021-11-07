Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DE68B447407
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Nov 2021 17:49:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1660060665;
	Sun,  7 Nov 2021 16:49:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MEKnWt0TUNTT; Sun,  7 Nov 2021 16:48:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6D60D606C7;
	Sun,  7 Nov 2021 16:48:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4B7561BF426
 for <devel@linuxdriverproject.org>; Sun,  7 Nov 2021 16:48:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3AD79605B0
 for <devel@linuxdriverproject.org>; Sun,  7 Nov 2021 16:48:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qeewon4DSdQ4 for <devel@linuxdriverproject.org>;
 Sun,  7 Nov 2021 16:48:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com
 [IPv6:2607:f8b0:4864:20::62a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6A01D605A7
 for <devel@driverdev.osuosl.org>; Sun,  7 Nov 2021 16:48:47 +0000 (UTC)
Received: by mail-pl1-x62a.google.com with SMTP id o14so14256140plg.5
 for <devel@driverdev.osuosl.org>; Sun, 07 Nov 2021 08:48:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=3KhLtwCKP93j3EcWq+BGTsAWsp8Oi4eBuXX0Ov40ah8=;
 b=TNg4tHoQw5kKoLZkiGTAZIxJzUBBq4ejYt4ncgOecgNOvSUwtqqwittPPI+7pJVjX+
 GpTp2M0KfhRYRUpBRXEYVXnxqP/7lqMWjwkVgxSXQTHg4r801CGBH3Cxkr2xCA8iHpDQ
 PkNioeCtNa8D4FxZOybE5F6kFZNCXIj5SS/5dluRY9kmgQGkqsgb/0EL9qYgh0jdJYEk
 mgqrImAxVO9xLB3ph2REOdqPQUk3eSUgj070IZGlv2zYI0h97xHGiGSssFFZrlwEHWTd
 7gJa3FlCIyQYHI4/knwR34TShiwqFLlPcy+ypePmUlRAZLKNrHzuj6T1hpUgZdGxUgLr
 tNtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=3KhLtwCKP93j3EcWq+BGTsAWsp8Oi4eBuXX0Ov40ah8=;
 b=ZDeKcYAv5xlOOvAFj6lEURXWCUbX0ng5OQU/IPk1cCEq8u7qK6o3G7OmV0TG3RafDY
 Ea9LkQyRUv+PsgpAvwE+Rb5iK9tYBEs++fbiaIpGhAeFYFUPOKZn+VG7s7te7Jlsi8qD
 SHO80xLJuGwVZp4fgjeUasTRNYrXVuINxNDjOJ2yxitrOFH+XYtI1aCJZM0zQQeLLOxF
 TrjXwqyZK3Tdw+bt0/RoO7aqX6S4KbmO5X0q82eUfmOD8sXxcYEV6v2WMrhkQN3Uxn7+
 Pmz13LR4rn2gpim9dEWTzQWRrRfColOpstSS8knu7ubOp9Kf7XDWItMObvC7tjTRvn1W
 oHJg==
X-Gm-Message-State: AOAM532VDFhRON8pKu7/xgrpXbWBbqWXy5AlaqFa1y6FJ+Z+6DXIwfyJ
 fq1PJ4ngo2h5WQI/E8stDvSrw0RHW3TJ2VPby+Y=
X-Google-Smtp-Source: ABdhPJxAeCOxzzTO2bC1ebInPX7TK42gu5RWx2Xb9R/R8imfArbHNs+vmtD0xqJ/WYY5NVOuLREd2E+dZSLVoRt6leo=
X-Received: by 2002:a17:902:a60b:b0:142:7621:be0b with SMTP id
 u11-20020a170902a60b00b001427621be0bmr4070721plq.58.1636303726736; Sun, 07
 Nov 2021 08:48:46 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:4a14:0:0:0:0 with HTTP; Sun, 7 Nov 2021 08:48:46
 -0800 (PST)
From: Amadou Benjamin <ousmanekarim54@gmail.com>
Date: Sun, 7 Nov 2021 08:48:46 -0800
Message-ID: <CAJFAt4Zwu2DZNzEx2mhTp73fqWvHNwMrUMgOFZ==TBGW8S=HkA@mail.gmail.com>
Subject: 
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
Reply-To: amabenchambers00@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Hello good day.

I am Barrister Amadou Benjamin by name, with due respect, I am
contacting you to help get the deposit 10.5 million Dollars, my late
client Engineer Vasiliy left in his Bank before his sudden death on
April 21, 2007, to avoid confiscation by Lloyds bank. Please write me
back through this email (amabenchambers00@gmail.com)for more
information about this transaction or send me your private email to
Contact you myself.

Sincerely,
Barrister Amadou Benjamin Esq
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
