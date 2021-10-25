Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 396ED439C13
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 Oct 2021 18:51:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 32A8980D98;
	Mon, 25 Oct 2021 16:51:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CU8xqZzsNPcP; Mon, 25 Oct 2021 16:51:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A72580D6E;
	Mon, 25 Oct 2021 16:51:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9A4731BF27E
 for <devel@linuxdriverproject.org>; Mon, 25 Oct 2021 16:50:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8973980D92
 for <devel@linuxdriverproject.org>; Mon, 25 Oct 2021 16:50:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BvljxA0q4C_d for <devel@linuxdriverproject.org>;
 Mon, 25 Oct 2021 16:50:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EE9E580D6E
 for <devel@driverdev.osuosl.org>; Mon, 25 Oct 2021 16:50:52 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id g10so1854923edj.1
 for <devel@driverdev.osuosl.org>; Mon, 25 Oct 2021 09:50:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=NPPXtkSg12wj6NnC+YOpXdAAeqYpYXrMWM6lCype7Tw=;
 b=V97ZiTxrYSx1Qu6mK2AI1wOSF/hizpcSFTCVMY7aQKu5xII1a8QvGOudVJtGRSxKj6
 19lsENpwIpL+qJlY4ovJ1CU1tPmIAoSSK2Oa6Z9HwLq6f8woGRSElfoLxNr/TYvaTmJv
 BtTYUYMjOlMH2L4pxylmhATPW3HMb3KCE+ndhtBa0in2ibu9j7/PSJhUjIHjhg0T2f+d
 3fhhpFKwLodEZNnDhlzFYbDfec6KBs0Q/XECSBND06UououDhbG63qKRPLvud7630WqZ
 EzpyYo4OMSX4Qee7Mc7j0JobhhHfIaBBwJ652V/5XZn7BmhGnBJVHIlyNfiIfJP0atpX
 poWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=NPPXtkSg12wj6NnC+YOpXdAAeqYpYXrMWM6lCype7Tw=;
 b=yhvDVllbOI0JRuhJb19G3x0LZdC1AoC3Xi/Q90oO5bkf0REXsGz252CLaYguATuMof
 FEFRp+SX9BKz9GQPH1rHaDtzRu0i49IfBc+FuF80Oa58Clsa8yCrikXqVrcdhvvjPJh8
 8o5OdGlCcZD4Tp7UMesQwyJeBxjaIdrE5Pt3lG7aCdl4cUftk/2PgUk4gCLUfUzzJBx0
 zZSVq2JpqQuLgswiY/3Sy6sRgqbFN2JtyR9bMxISq11vW7hQcv7WdhQ/73t7dTqzj1hH
 Gxk0i2SCC8AIDb2x6/OjyxD+OSNWsCTzYCr+1q7g4CfWAsfrMkGoqDSRP4kYju5OVjQF
 D9rA==
X-Gm-Message-State: AOAM533HdrxtbnjnujWuMAI1v3fCvjrriAZGjv/hx98XJnXrUE+ncA1Y
 38I2wJl2yH4tQPG6bJiwM5FpOgZe250N0EhjbGI=
X-Google-Smtp-Source: ABdhPJy/OWBX18YihdiWErVw4gIlGVEsbLZvu4YIu8DhGKj853mpOJwNawcBm3myCzSAKQxWq1khblE1qdVFaTgkWks=
X-Received: by 2002:a05:6402:2787:: with SMTP id
 b7mr17279022ede.230.1635180645944; 
 Mon, 25 Oct 2021 09:50:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6402:ca7:0:0:0:0 with HTTP; Mon, 25 Oct 2021 09:50:45
 -0700 (PDT)
From: alexander morgan <marinavanessa534@gmail.com>
Date: Mon, 25 Oct 2021 09:50:45 -0700
Message-ID: <CAAPyjrs6ffayTc6xEdNJV23eQuLkavARxqLQxobfHiNqa6mPXA@mail.gmail.com>
Subject: hi
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
Reply-To: alexandermorganmorgan238@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello

My name is Alexander Morgan a Legal Practional and Am in need of
reliable person to help me retrieve some funds belonging to my
diseased client ($17.9M).



The bank issue me in notice to present any of his business  associate
or friends to claim this funds.



I had to find a foreigner who is reliable  to present as his associate
so that the fund will be released for our mutual benefits.


Please let me know if you are
interested kindly reply to: alexandermorganmorgan238@gmail.com for
more specific details.
Thank you.

Alexander Morgan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
