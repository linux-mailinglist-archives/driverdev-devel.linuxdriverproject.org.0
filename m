Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA4D488F20
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jan 2022 05:00:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D3B4408E1;
	Mon, 10 Jan 2022 04:00:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R6kFE46MLtLR; Mon, 10 Jan 2022 04:00:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A82EA408D7;
	Mon, 10 Jan 2022 04:00:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6F5D71BF97C
 for <devel@linuxdriverproject.org>; Mon, 10 Jan 2022 04:00:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5736960BF8
 for <devel@linuxdriverproject.org>; Mon, 10 Jan 2022 04:00:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DUP52ubSQygn for <devel@linuxdriverproject.org>;
 Mon, 10 Jan 2022 04:00:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oo1-xc31.google.com (mail-oo1-xc31.google.com
 [IPv6:2607:f8b0:4864:20::c31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1094460792
 for <devel@driverdev.osuosl.org>; Mon, 10 Jan 2022 04:00:41 +0000 (UTC)
Received: by mail-oo1-xc31.google.com with SMTP id
 k15-20020a4a850f000000b002dc3cdb0256so2848131ooh.3
 for <devel@driverdev.osuosl.org>; Sun, 09 Jan 2022 20:00:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to;
 bh=dKFXRxFFjh9xw1vPCYWrhibJscdy5DYIaUyqlpaPFVc=;
 b=UGjAN0mYxpJTFw8BhXSQFiyFqHGSTBXDZ2uWsWa/6KX6mYVFHmNtNdjAo/A11/YxnL
 vHrk+ei8OvvRih+QDqqhTpKmY6L5irQkld/WUsi3JRoNU6tb/S8Mgvh+vveMqx0gpun3
 XgODVuJy0wZ42CB8GSl0Jkei7iTxPlv6HruWwgMJEVsjt0iESJaWY6iXcpOeVELePybN
 lep3ZPXWO3PniX+ZJT7SJJmbzXnYfOl5fy5jYizRrpRrCxdqQwpqCx995IRBrLPztPT8
 FObR2uSO6RG8CU3vrgu179qdGBP3fUgeNaNy1pMVH+Xd9lAriMgqmwbKM3SSHHEP5D0t
 DRFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to;
 bh=dKFXRxFFjh9xw1vPCYWrhibJscdy5DYIaUyqlpaPFVc=;
 b=jxuYqjlAuZ4FKl3A/TpadCuSNep2yAXEcxMo8mh5KBsbXRXk1Larp5ndNuDsj7ksmM
 Eb2MpMXnPmqYauSWNnBzwsGdh7sJIWYoTnAchpVpSPdcQ0/exRqudn+8xvPXXQuCM5km
 6NlID2toB0tYtxkIFNjQHJ33Uzru4qpmkX5Kzqz5gT1Pqa+f4u5HFJWUsExp5XoBDlqq
 2sqb8SJMtzV7OB29adMJNVbOTCQBM7OO300vZacl2U+jVvSI1KUjAekdfPcKfZvMvAfR
 pB/Wn8wwkW+7Z1kkEjWKkZq4F0tk53/4bRQAQmg1ZSlfC2HIhHWjuOE/RCLwDYhVvRpn
 lt2w==
X-Gm-Message-State: AOAM533usni3o9JKFAQmTwocF4qw3dOAyHUeqWgpoFiVuXE4vW3IovFs
 cNUEv0xWXqWavWayP3haZaysOetPOV3nyth0VNk=
X-Google-Smtp-Source: ABdhPJxrtdwJzVtg+gZKwXqdSzOaFmFAKaZYOOLNaABYkoFuUCxeFLeYGVeTHNoNAKBKWWkSlCyJmAAbdt75x4fC3JI=
X-Received: by 2002:a4a:9568:: with SMTP id n37mr46262791ooi.73.1641787240696; 
 Sun, 09 Jan 2022 20:00:40 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac9:1329:0:0:0:0:0 with HTTP;
 Sun, 9 Jan 2022 20:00:40 -0800 (PST)
From: Godwin Pete <godwinnpeter@gmail.com>
Date: Mon, 10 Jan 2022 05:00:40 +0100
X-Google-Sender-Auth: aEw5M8YnzKzsBXcwH-P_ApsJeq4
Message-ID: <CA+8O8-ek9BBRYNTDeuJbx5th-v7nxospFMmnYdbqT7h8DmPEaQ@mail.gmail.com>
Subject: This is for you
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
Reply-To: godwinppter@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

How are you doing? I am very happy to inform you about my success. I'm
currently out of the country for an investment with part of my share,
after completing the transfer with an Indian business man. But i will
visit your country, next year, after the completion of my project.
Please, contact my secretary to send you the (ATM) card which I've
already credited with the sum of ($300,000.00). Just contact her to
help you in receiving the (ATM) card. I've explained everything to her
before my trip. This is what I can do for you because, you couldn't
help in the transfer, but for the fact that you're the person whom
I've contacted initially, for the transfer. I decided to give this
($300,000.00) as a compensation for being contacted initially for the
transfer. I always try to make the difference, in dealing with people
any time I come in contact with them. I'm also trying to show that I'm
quite a different person from others whose may have a different
purpose within them. I believe that you will render some help to me
when I, will visit your country, for another investment there. So
contact my secretary for the card, Her contact are as follows,

Full name: Mrs, Victoria Nyemuya,
Country: Burkina Faso
Email: victorynyemuya@gmail.com

Thanks, and hope for a good corporation with you in future.

Godwin Peter,
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
