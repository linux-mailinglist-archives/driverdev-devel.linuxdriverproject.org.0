Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E9F4BCEE3
	for <lists+driverdev-devel@lfdr.de>; Sun, 20 Feb 2022 15:27:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4B55D4028B;
	Sun, 20 Feb 2022 14:26:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dBTMx2e9q2Ck; Sun, 20 Feb 2022 14:26:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1310940261;
	Sun, 20 Feb 2022 14:26:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6D0D41BF403
 for <devel@linuxdriverproject.org>; Sun, 20 Feb 2022 14:26:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 55649814B4
 for <devel@linuxdriverproject.org>; Sun, 20 Feb 2022 14:26:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rnRoj_xVmX7i for <devel@linuxdriverproject.org>;
 Sun, 20 Feb 2022 14:26:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com
 [IPv6:2607:f8b0:4864:20::d43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CB50D8141C
 for <devel@driverdev.osuosl.org>; Sun, 20 Feb 2022 14:26:54 +0000 (UTC)
Received: by mail-io1-xd43.google.com with SMTP id w7so13148900ioj.5
 for <devel@driverdev.osuosl.org>; Sun, 20 Feb 2022 06:26:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=RVRrDKqkbQIwJlut7KLULjJ7V7s9QDd9wKfp/JLPCPs=;
 b=QiZEp8Z++dwMCAr4pIOejbJTTwlPDw1BGJ5Jrbu3ui+2nhQ4DnAzSBhoyWNrd5JbuR
 ZBPgMhfJWQ+YDlD6SRn8JB1DQTncZ2as9Q02v/dWzxJfT8OAXPgDktOyduNxj7mhbXUY
 1/cZBSsKW3kVqn4V7UXrQvE8RvAbH7PoBKdR4Z3akd4U1Bog/1CCorcDDmjlB7dgIQ9u
 VWZwdLV/xEztcvyrMkOrDccguiVqEFI0Rvt8N34R9etq5Feh8pGasNoTYW0ufQ3ywQVg
 Gk26Isq+Ah+gq7rCY/qHv4dsXXLV0rxH4jsA28odROaVejiyrsuiCMRPWJaj228Qh63w
 PeTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=RVRrDKqkbQIwJlut7KLULjJ7V7s9QDd9wKfp/JLPCPs=;
 b=sqSDCFw8IsJHuotYPsLGVrOi2gbSbgA4jfnHdu1hUltTY08bV2ERPj0marsATPW8Qa
 /bYkrW43q0es3dY/AUptN4ZeUb+EbqomoGoG1vqg5lHoPCbuQBhKRklpnRIOvLhbd33X
 cs+jpr92YtvVlKb+h6VIDlYKfBi2akdjcTNayGfjSjbfWuke7zqfZSL8QuPeW0AYGX40
 amgoH01tr0Tyr5ntZqyX5Rp+Mk9HZ5g9uvL7E8q1ee/IrUckleCGvh17T/fwCze6NdCo
 iiB3mwFDt76qUfydmwN9vUPyQ2E+ECSCnUQn4lru24fa3dRktdzVL0M+hpJw61/+bkCU
 q5Kw==
X-Gm-Message-State: AOAM530n1q2bWx3DnTCuAfbKaMAiQDXEqY9dJQQcT1ZSYVHydPITtgOw
 pEzqCi76OjzJgiq2GU2C9Ao0rqLzQkaASABwu+c=
X-Google-Smtp-Source: ABdhPJz0Ic1I646E8EpN/kOBPc8ixRh71yZ91zsgAJ3q+Bdxhm3Y0oy01z9n60ybu5eIKFLiR10wUeAdGFFQ27Ucz04=
X-Received: by 2002:a05:6638:150c:b0:314:7784:e9c4 with SMTP id
 b12-20020a056638150c00b003147784e9c4mr12394181jat.163.1645367213630; Sun, 20
 Feb 2022 06:26:53 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac0:eb8a:0:0:0:0:0 with HTTP; Sun, 20 Feb 2022 06:26:53
 -0800 (PST)
From: Mimi Hassan <mimihassan971@gmail.com>
Date: Sun, 20 Feb 2022 06:26:53 -0800
X-Google-Sender-Auth: NjTGbONwopWNwnYIGqIaHVLArHo
Message-ID: <CAGa6i3jCGM8VUvDrcPYajZA1jh9GL6n4CJ=xMU2U+P8bhgmNAw@mail.gmail.com>
Subject: MY WISH
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

If you are interested to use the sum US17.3Million)to help the orphans
around the world and invest  in your country, get back to me for more
information on how you can  contact the company
Warm Regards,
MRS.MIMI HASSAN
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
