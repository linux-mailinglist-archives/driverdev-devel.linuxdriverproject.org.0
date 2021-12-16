Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 828DC477092
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Dec 2021 12:42:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9FD9041723;
	Thu, 16 Dec 2021 11:42:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wU0frjzZCyMn; Thu, 16 Dec 2021 11:42:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C1C84163D;
	Thu, 16 Dec 2021 11:42:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 092901BF2B8
 for <devel@linuxdriverproject.org>; Thu, 16 Dec 2021 11:42:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EBE1C60FF2
 for <devel@linuxdriverproject.org>; Thu, 16 Dec 2021 11:42:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5MbhpZ1FChDL for <devel@linuxdriverproject.org>;
 Thu, 16 Dec 2021 11:42:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com
 [IPv6:2607:f8b0:4864:20::729])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 56EF360FEC
 for <devel@driverdev.osuosl.org>; Thu, 16 Dec 2021 11:42:17 +0000 (UTC)
Received: by mail-qk1-x729.google.com with SMTP id t6so23039555qkg.1
 for <devel@driverdev.osuosl.org>; Thu, 16 Dec 2021 03:42:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=xre5um49Rnqa1tZMCD58Cd6UlD4MleswKAp3tzt2gjo=;
 b=RYToo8NyNPhlgiHYmZ1ikup312GHYFKKh+SoiQn5DFM08VhX1fCTukNf+Ub7gXZH+R
 Fdt5I+ZO38LiZ7aX4HrBDtCguvWjGt4+jG/EN+k0G3h02B6emUjwzPzxnL4uWQz6AWTD
 WqO7wKZcX2hj88TEq1skHq9q03JmZTMsDYFAuzRyTE65aq8YfmTLKW6klN/Aemrjl5Su
 VOqZm/oCKsPxxvibvSdyBq0qcyBC7yt8asycNVxLymhtuzVbvkdkv8HRw/7WHA5ZhBTe
 lfMRM7TjowGzvp5BFYZjQfF4jcwfD0Oa7xMNuJL1tGpMndUewyeeM3+DNYanGu61M7GC
 kNpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=xre5um49Rnqa1tZMCD58Cd6UlD4MleswKAp3tzt2gjo=;
 b=oMz7y86cT4PT2+RY57pAEtAdORDCDpviqmP7wRol+Br+5Y2HFTnzlk8xEFQHyp3vwq
 xuoeg01pjykxDL4JceH/Ry5QUsfzZaq+KCPobujVbgzf7quyq4MtZKay9kL0+Lf6x0hz
 YHzk6HLK08tMopi3Tinp9JQXzEVVPm+s6VTLw8+7LBZxYh7Z7tO1G3iuVnw4mbWr/rHD
 Ea1zl9OA9z2lM1JRcGxeq+b8Ec8TT2qGBWcqghS0FP9H1WlVnj1OpbQNeO/RwzMcdMVA
 qTPQ5W8i/OqWiNltbyedvgoL5S7AcgBoaUE8C9/A5q/mMYDfbyRGbqKU1JTHVexyMfwY
 I4Bw==
X-Gm-Message-State: AOAM532n/2jb54YQm0Tprh6IVO8c0++1zPmghN/902EkS3hRLoIxTfvt
 9oaBB7jporUZgURph0U9vEbW199+8UErzRP2l4s=
X-Google-Smtp-Source: ABdhPJxYJ2zBl8EMgF/vH/Si0uACMgpOTf1urUCOAwYb4fXYvwfKJa3PKYFOZBbaDpp9AFOjwJ3sIeVfeVjNcnbyBfg=
X-Received: by 2002:a05:620a:bc3:: with SMTP id
 s3mr11727889qki.197.1639654936129; 
 Thu, 16 Dec 2021 03:42:16 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:622a:199c:0:0:0:0 with HTTP; Thu, 16 Dec 2021 03:42:15
 -0800 (PST)
From: Selvia Santiago <mariamatinez119@gmail.com>
Date: Thu, 16 Dec 2021 11:42:15 +0000
Message-ID: <CAONDhKPUij_8sWOmcDAVKuHSL7avy+Ti7bOVRu6x__3ouvD7kw@mail.gmail.com>
Subject: Urgent
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
Reply-To: selviasantiago1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Urgent

I am Mrs. Selvia Santiago from Abidjan, Cote D'Ivoire, I am a widow
suffering from long time illness (Cancer), there is funds I inherited
from my late loving husband Mr. Santiago Carlos, the sum of (US$2.7
Million Dollars) which he deposited in bank before his death, I need a
honest and Faithful person that can use these funds for humanity work.

I took this decision because I don't have any child that will inherit
this money and I don't want a situation where this money will be used
in an ungodly way. That is why I am taking this decision, and my
doctor has confirmed to me that I have less than two weeks to live,
having known my condition I decided to donate this fund to a charity
or individual that will utilize this money to assist the poor and the
needy in accordance to my instructions.

I want you to use 70% of this funds for orphanages, school, church,
widows, propagating the word and other humanity works,The remaining
30% should be yours for your efforts as the new beneficiary.

Please if you would be able to use these funds for humanity work
kindly reply me. As soon as I have received your response, I will give
you further directives on how you are to go about the claims of the
said funds.

Remain blessed.
Mrs Selvia Santiago.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
