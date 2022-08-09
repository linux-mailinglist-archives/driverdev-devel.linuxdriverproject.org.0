Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7591A58DD34
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Aug 2022 19:30:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D9257607F4;
	Tue,  9 Aug 2022 17:30:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D9257607F4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HfR09ASiVU9O; Tue,  9 Aug 2022 17:30:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8329160AD1;
	Tue,  9 Aug 2022 17:30:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8329160AD1
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2CCCD1BF859
 for <devel@linuxdriverproject.org>; Tue,  9 Aug 2022 17:30:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1343A813BD
 for <devel@linuxdriverproject.org>; Tue,  9 Aug 2022 17:30:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1343A813BD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sK1vup-Xc6P1 for <devel@linuxdriverproject.org>;
 Tue,  9 Aug 2022 17:30:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C198B8138F
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com
 [IPv6:2607:f8b0:4864:20::b44])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C198B8138F
 for <devel@driverdev.osuosl.org>; Tue,  9 Aug 2022 17:30:35 +0000 (UTC)
Received: by mail-yb1-xb44.google.com with SMTP id 7so19501990ybw.0
 for <devel@driverdev.osuosl.org>; Tue, 09 Aug 2022 10:30:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc;
 bh=iamq2T3Ceg534qSqkUN2jS9akGKvkSJjTrqZcmRmjlE=;
 b=uCH+onR5xMehRunjO6HHOY7Gq6kAlNECPb/+x0rsD9m/tVELjeukolcI0Kpxiv+prE
 DZlkf5JJBPYtc75szu6ILzl6AF+YJQVcOoU96FC2CjB1ylad9LH6iOriMNeeCVPnNPPG
 u4gsgh7B4q/WNLHyasrvNThnTiA3qpRWsc0hDZgMSQJWJ8JmD57xByapbC0mLDhRfRwh
 d1BK2jwkq2+YZVTBnvGDau+RcEsqDRKZpt5RVCjzqbpAEACKjurE9b1pWvFPNuADoMD0
 pt19EfY+QV7LS+GDNWUkXlqR47WZnMfG6qNpx5vdJMz2L7XmFgQt3UzggPujFtjEuqkc
 fnZg==
X-Gm-Message-State: ACgBeo0OtaBH/HG4Ok4xfD77IeBHp/A+O5V+/yG75XxF+9eGz6q+eFjz
 O8H6exF6VpvxwCOkeDMknc8D9gRXVRLSEVaiO9Y=
X-Google-Smtp-Source: AA6agR7gLIhmRoDe7GN8N43uV8WajSPsxrs0TSlT6ffBxRbHDO9Peykh8ub48zeXxaujwjTkMM/u+Fau0N1Ob+CXR9s=
X-Received: by 2002:a25:1d6:0:b0:673:960c:aed1 with SMTP id
 205-20020a2501d6000000b00673960caed1mr21724379ybb.399.1660066234520; Tue, 09
 Aug 2022 10:30:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7108:6904:0:0:0:0 with HTTP; Tue, 9 Aug 2022 10:30:33
 -0700 (PDT)
From: Ms Jacquelyn <kemfg2@gmail.com>
Date: Tue, 9 Aug 2022 10:30:33 -0700
Message-ID: <CAAYZbNSdha8uRM4sab8qHh6S6dqtAQOvYPkn7HBkWBftdd436A@mail.gmail.com>
Subject: Re;
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc;
 bh=iamq2T3Ceg534qSqkUN2jS9akGKvkSJjTrqZcmRmjlE=;
 b=NAINZRkIYeP1rO/kxPtwh3KFviJVW5FFoOIgNP35W32UvrEADtxMwae65pTqBbnBuM
 B2ZGkRP4aJD8Oz7Wv85nB/VokXyQ+38h0s60D1eHxtdsKYpRHYc5Iq4LgOjA1gf2tX5a
 wmq8/7EVPSFEOaStmGYfOgc+1GMfgrJCoxJwQzpShG74K8uwKdw6nk0v2JAvSRpOQNnA
 0CjLmSPAhLVtV4reIPK1kfYVY/62K+QIzZdc2ER6dmSa33TqWw7qFOBbAQLYl5OGJp1p
 nxB0cHHSGjovjDsyFhwx4oIRQIngFIHO1lRs/JUTOiCfm5qRFvwRSUrd/V6Yw38cpNu/
 8TEw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=NAINZRkI
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
Reply-To: ms.jacquelynmit@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Dear,

My apologies for the unconventional contact, though it's for good
purpose. My name is Ms Jacquelyn Mitchard, a banker by profession. I
am contacting you to repatriate a huge sum of money deposited by our
deceased customer who happens to have the same last name as you.

For over five years the fund was without claim because the deceased
died with the family in the auto crash incident. Now all the effort
the bank made to locate the deceased family through his embassy was
abortive . So I contact you to make this deal with you because it will
be very easy for the bank to pay you the money as the deceased next of
kin , hence you have the same last name as him, because this is legal.

For more information to execute this deal, reply to my private email (
ms.jacquelynmit@hotmail.com )

Thanks
Always Yours
Ms Jacquelyn Mitchard
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
