Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF7E1DA732
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 May 2020 03:29:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0AFF0230E6;
	Wed, 20 May 2020 01:29:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ilHTRgULdPrX; Wed, 20 May 2020 01:29:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EDB4F2048D;
	Wed, 20 May 2020 01:29:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DCCC71BF287
 for <devel@linuxdriverproject.org>; Wed, 20 May 2020 01:29:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C9D662048D
 for <devel@linuxdriverproject.org>; Wed, 20 May 2020 01:29:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vhv39I4vptIE for <devel@linuxdriverproject.org>;
 Wed, 20 May 2020 01:29:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 0EADD20401
 for <devel@driverdev.osuosl.org>; Wed, 20 May 2020 01:29:23 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id c3so1169403otr.12
 for <devel@driverdev.osuosl.org>; Tue, 19 May 2020 18:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=fS8BoALlEmEhdNJ/8YKWC3J9QO6yhpm7x3ntFRYv3PU=;
 b=IuDYOETENv2vFqjbn01+2XCAXzrFpfzDqfbuIKG4ckrB8KeK3nGSU0E1K81i9Bm9WK
 jQqAlP37RO4R2zpNTQD4mJnAZJmn8XZYq+dhxkpcL7D6INeZ3UDW9gEUqrsno+oOGqMm
 AE5aC2IIj8WurX0jNrGQXiC4uepGaOpVjx+bfz4im1sy0DXj135l/pS3YqHrs67h/4Va
 m5wwZCtIqz8LhRiqavE91h2lMsWO5ciFEdFUWN6IcwBJf78INm8RWS+vY5oTku51O9hG
 wp/henQ7tXX0jggV5S/2JkAw5DbI4lul78TykYdtzSpPJxhehx6rDUt0auRvu531Hid1
 wvqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=fS8BoALlEmEhdNJ/8YKWC3J9QO6yhpm7x3ntFRYv3PU=;
 b=jxekbYBXLS0aHJZR4Rl141h6CRF3rj4lD2wbxfIhE5jsVmZ6Ap/2Ek8sJxO5mehI18
 qW4N9GUVIXVr2UN4tvQMIjQ/VFPVsJYgtsmGJI2gqxVdjDGT0Pe8ZCLm9NHoRQxaLAQp
 TDTRD3e9BR8ADi23sK1zPOO9Cs4fl2Y9TtOO0trt3y6uTXXtrqJ4/f5ARUjZUQWttg4F
 2jrr5RF4Ao68N8eYEhFO77HANPaXfjN5Jj6fR3Dyr1WQfiIkIB/Z/hdGl1LfZ2TFBH1S
 2c6ahSgohs87WLLbF4uElEWwHlTTSE5d8IVJA9LSGggUOLiwztpHsoTsnUA7rBujgQJa
 +tgA==
X-Gm-Message-State: AOAM533ZAMJCoPGuhmuQSCwwmCfGtPawaL5kFNh3aQd4z1tgAExw9Bja
 HI0wvai84kM7HM9Jl2MbqWZjHQ8+WwDDr8Dfn5o=
X-Google-Smtp-Source: ABdhPJykBxe7wUBIxYC7Eq0iwcQdfQsIie7tTUr/VAFG5+QRAX0evylbGE9OmoNyuiKYdnf4oXWPPf+SCB6heGOIrEM=
X-Received: by 2002:a9d:444:: with SMTP id 62mr1457358otc.272.1589938162177;
 Tue, 19 May 2020 18:29:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6830:c:0:0:0:0 with HTTP; Tue, 19 May 2020 18:29:21
 -0700 (PDT)
From: MrS Chantal <mrs.chantalw11@gmail.com>
Date: Wed, 20 May 2020 01:29:21 +0000
Message-ID: <CAA87ukUxv0njTxebwudL-Ay8yEQJiC8MsS=KBz9eHUvb=8Mc3Q@mail.gmail.com>
Subject: ai.Compliment
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
Reply-To: mrs.chantala2055@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

    ai.Compliment

     Compliment of the day to you. I am Mrs.CHANTAL I am sending this brief
    letter to solicit your partnership to transfer $13.5 Million US
    Dollars.I shall send you more information and procedures when I receive
    positive response From you. Please send me a message in My private
    email address is ( mrschantal066@gmail.com  )
    Best Regards
    MrS.Chantal
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
