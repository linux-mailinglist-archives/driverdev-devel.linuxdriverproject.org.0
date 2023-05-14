Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F3CEB701DD1
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 May 2023 16:14:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3C42C41B94;
	Sun, 14 May 2023 14:14:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C42C41B94
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t5AStXnD7Os2; Sun, 14 May 2023 14:14:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DCEAF41B93;
	Sun, 14 May 2023 14:14:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DCEAF41B93
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D61B51BF3B9
 for <devel@linuxdriverproject.org>; Sun, 14 May 2023 14:14:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AF78A83C87
 for <devel@linuxdriverproject.org>; Sun, 14 May 2023 14:14:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF78A83C87
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ierfwbljgdit for <devel@linuxdriverproject.org>;
 Sun, 14 May 2023 14:14:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 05D5A83C86
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 05D5A83C86
 for <devel@driverdev.osuosl.org>; Sun, 14 May 2023 14:14:19 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id
 ffacd0b85a97d-3063891d61aso11235545f8f.0
 for <devel@driverdev.osuosl.org>; Sun, 14 May 2023 07:14:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684073658; x=1686665658;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=a/oLN0HWNXYLFSQVFCKMlrGECeMxtPjxXzOE8iFyUoc=;
 b=SmJ9L2XC+IYy4n0nsAdO0oRt3Xzd033cunnKSNTqZbQ8OfLvs7d58xGzpL3pA5OajD
 KfKPD5MrSrUreIvC97dkY5XC2egWCGrrH67+w88lYInTTn57KDL9HiZ9+LSJjP5KD6rU
 Mken75HtGo/D1yke8k4Aytn33J/kLEfTu3qsUiz8BLRWeDEH/Vh+YGYKUp7M60x7IcYq
 XTvz1lBB+OA7ohaHOJnr+HcFG8PGA/pazZhzV4lm5iGBz73EXTsBv8dsM6mTLO6Leebc
 79aoE1v0qFOKlgozssmSZ7s5xkpuq48jJge3BlRXWcPjJ8LzQwsGmRol4todMgzhW8A1
 ch0A==
X-Gm-Message-State: AC+VfDzrapQJVfLIzcS0/w9CCaG3V6Vlc4SrhVsQ8cB5RaOVbTz2dZGu
 9oO/KWHMrEKrA4kqmI9mo6T1HupbO4xeABtZnOQ=
X-Google-Smtp-Source: ACHHUZ6O8HBffveio/GNiynTjtlKHQdczuhoL+29eb4edH/BHXOa9dVLd2e+ziTx5lmQ6Roc0IPrR/V0EqPSSTfB0pU=
X-Received: by 2002:a5d:44cd:0:b0:2f6:208d:2234 with SMTP id
 z13-20020a5d44cd000000b002f6208d2234mr23420714wrr.2.1684073657584; Sun, 14
 May 2023 07:14:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:adf:fecc:0:b0:303:c31b:a73b with HTTP; Sun, 14 May 2023
 07:14:16 -0700 (PDT)
From: Debora <deborajay372@gmail.com>
Date: Sun, 14 May 2023 14:14:16 +0000
Message-ID: <CAHUR393cqvMJ1aG42ioSGg02gaFDpfsbcQr6iR0LAGdMHSNQLg@mail.gmail.com>
Subject: NOTIFICATION
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1684073658; x=1686665658;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=a/oLN0HWNXYLFSQVFCKMlrGECeMxtPjxXzOE8iFyUoc=;
 b=Y5wXedwNZtcOLmAodUC84G5VIjuHjaACnic6JcAAKAa+lslmQROkPWwK+cTrIRrmGi
 MlnBg0GxqvPvwm+7dpgrChpK5r9WO07+Qx1ljp0IN3W2ijb7yehKR6xkk3Bb4Q6BSJWG
 xB6ISgQb54qYnTOq5wbbk7NqVoWL+Q2c2M/HRhAtJvwODX+oXvgyTar2cJ4V/mOkp3eE
 0Y814c0HMtN4CMIfG4tEVExEN1fPec/L59atjDOsPXvdhJlqO4j83qiTpNuJsjVDSYTm
 XalXj12wniPTN3QolVWAnVGX2NtoslPUsNZqBAYRlIFNmr83zPLtR57gVDHse6NGllBB
 TBig==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=Y5wXedwN
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

Dear It is with tears that i am writing to you i need your help and
assistance am an  aging widow suffering from long time cancer of the
throat and I inherited from my late husband ,and I need someone like
you a foreign partner that will withdraw this money then use for
better investments and charity in your country , i contacted you to do
this because i am seriously sick and i will not have time to do all i
have stated because of my health and the doctors have already told me
that i have few time to live so please if you are interested kindly
let me know immediately so that we can proceed because i am really
suffering from this illness cancer so please have mercy and pity on me
and help me get my funds transferred use it for Charity works or any
profitable venture that can help the poor and street children
especially ,I accept this decision because I do  not have any child
who will inherit  this money after I die.

Warmest Regards,

Mme Debo G
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
