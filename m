Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1791E522EC6
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 May 2022 10:55:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B955141893;
	Wed, 11 May 2022 08:55:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2p1h4UL0rWC0; Wed, 11 May 2022 08:55:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2309541889;
	Wed, 11 May 2022 08:55:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E1E901BF9AC
 for <devel@linuxdriverproject.org>; Wed, 11 May 2022 08:54:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CAEB783330
 for <devel@linuxdriverproject.org>; Wed, 11 May 2022 08:54:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RJJ8us8paEcU for <devel@linuxdriverproject.org>;
 Wed, 11 May 2022 08:54:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ua1-x934.google.com (mail-ua1-x934.google.com
 [IPv6:2607:f8b0:4864:20::934])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 381DB83216
 for <devel@driverdev.osuosl.org>; Wed, 11 May 2022 08:54:57 +0000 (UTC)
Received: by mail-ua1-x934.google.com with SMTP id v3so536125uau.4
 for <devel@driverdev.osuosl.org>; Wed, 11 May 2022 01:54:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=Y55mSNzxK4v4H3Lfe9wqcgmZL9BFFHAgV6zxyHlOV2o=;
 b=h6GYbBpyo2eMBBHKjblDvsWIqYTyNXLYGPWEjrddfseNe/w0EUGcl7Ht72atpvbgcT
 gWLXYlJKCncK+E7xo3BMcT4IMaaLFTgcNCD1R15z2B74FdE5E+RxfObJlVlZ5AM7ur4U
 BzghLeju6aHog5ALYMkyCoiOby/D90TaHm5cCLsOCrpsGe8uPRonBZyuQUWmK6lfMLnQ
 Vi9D4SWv/34I6dXjbdOy+TPWnSj2KjIq+QyvY/Svd8g6uV7J9gvMxPuCwBb6Rf5MWt7c
 f1Vq9JqG5ZOmDzKK9x5I5iiOeJexwTam2ZWEUrVum6sxrW4Wragp/1KPty4XfQprpz35
 ketA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=Y55mSNzxK4v4H3Lfe9wqcgmZL9BFFHAgV6zxyHlOV2o=;
 b=J5vN6T4pKSwn6gkRaVTpjKj9cv6F280YEkvRBszq5kQiUvI0itSz6m/ET3lVB4AoZd
 eJs7UME6sq/QM5qcpIwxx7bfzW9fASvgKspFQsG5G3F0hn2YXMZaWxWDiqkAkSWDspPA
 BsRnalFnbgbAmFF84C3JYVP1z5UGGbU6YkPbbPIFtdV/3tgWDO2Hhhkg/pec4SinuSmk
 FQZLx+QZ+EJB3uhq/w0CQm6LeXdGzKsW2eVadaKazvjq82PP/cIECGZXnq46QZpmJPAJ
 sxFPNFlIFKHRO7iB95OkzjbF7yClYZ/07M6BcMYUbtmwuXjntCVWE7QamLTVYxlldXXn
 AKOg==
X-Gm-Message-State: AOAM530FdA9+aul/qMUsWNIXCUqXdi2FsMO11sdUk4zFYYclMl6lqtBo
 eqfLRy1zJbFxpo/EQYPwbQQAoVVQzZCVnEfBMzs=
X-Google-Smtp-Source: ABdhPJy4NKPhnJtsJrEwWrM1/g8flppqva6NK8aK3+R8m259txSCRunpiSNoIeaBmcQP/Q7nPQWKuZheVvfcyxK41gA=
X-Received: by 2002:ab0:2bc9:0:b0:362:8750:8032 with SMTP id
 s9-20020ab02bc9000000b0036287508032mr13029904uar.118.1652259296011; Wed, 11
 May 2022 01:54:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:612c:2094:b0:2b5:92e9:9e11 with HTTP; Wed, 11 May 2022
 01:54:55 -0700 (PDT)
From: "Mrs. Bill Chantal" <williamssmith01212@gmail.com>
Date: Wed, 11 May 2022 09:54:55 +0100
Message-ID: <CAJX8iieEqAAuWM=OipU43mMZh90qwBjTEqUboEFyUiSHsw=SNg@mail.gmail.com>
Subject: BUSINESS PROPOSAL
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
Reply-To: mrsbillchantal2022@mail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend

You have been compensated with the sum of $5.4 million dollars in this
united nation,The payment will be Issue into ATM visa card and send to
you from the santander bank,We need your Address, Passport and your WhatsApp
Number.
Thanks

Mrs.Bill Chantal
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
