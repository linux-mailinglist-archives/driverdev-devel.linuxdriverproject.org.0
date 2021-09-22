Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 99147414BC9
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Sep 2021 16:24:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8939E613ED;
	Wed, 22 Sep 2021 14:24:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3F4Ur_jjrIEG; Wed, 22 Sep 2021 14:24:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D2AB60BD4;
	Wed, 22 Sep 2021 14:24:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E79FE1BF3AF
 for <devel@linuxdriverproject.org>; Wed, 22 Sep 2021 14:24:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D77A282F50
 for <devel@linuxdriverproject.org>; Wed, 22 Sep 2021 14:24:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id In7utiD2wMAj for <devel@linuxdriverproject.org>;
 Wed, 22 Sep 2021 14:24:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ua1-x935.google.com (mail-ua1-x935.google.com
 [IPv6:2607:f8b0:4864:20::935])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9F30D82E5F
 for <devel@linuxdriverproject.org>; Wed, 22 Sep 2021 14:24:08 +0000 (UTC)
Received: by mail-ua1-x935.google.com with SMTP id 42so1949406uar.5
 for <devel@linuxdriverproject.org>; Wed, 22 Sep 2021 07:24:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=n9CHWZyWDp9kvdnuR+4lcf8cF9DH3RRu6znx/rfpPqs=;
 b=AN1Vavbm8tJGsEHHEl+/mzJd9j8Oj9kqpBqxzBdikoBQ9duQtQhCs3a5P+HEgKbxfX
 m2Cq1/WEtOFVN30IxrSrYWLrouiKx1W9i/TQayO11cG56vgAfzW5dv6C5UXwbv4jQfFz
 Ipon/rpjAgnNeg3EzD4OS2ODLRXH+vmeZv+kqWCyiDvms51GF+wgBfMQZ2i5NgdYdEAS
 uZRDMh3ImtbCuznLJGv26gXDxBOZ/taMfYSxZIwMtMRzmd8/NII3XVLASvUx5XN3O02Z
 u5c9JdVbflju2qFruT5hLVxLZDaBVnUcgCwDdJV5ugeX1OOHXj7cHuK70eqlqVmxqN/k
 /N/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=n9CHWZyWDp9kvdnuR+4lcf8cF9DH3RRu6znx/rfpPqs=;
 b=cWe8ymvxDOGnNJrf8ngscbJrTy1CL4NcujjwBB/bs8emZr+PfRzBFg9qCf4cC9s46o
 ncN1YU5gUTv0IYOI9YiK/H/iL7vKfrvB8Qsxx8eAqvmB4wKEun4YbsGz3iR53L12uTZM
 VY/Il7tAk0ffGozHi8d2KMOAsPXUhs1cJ1q1wwaoOr9Y9Ih6OtiSjNnd4U6imdVCdJc9
 IufUUxsoQd5YzEmBj6yVh84L9/S414HfLyRkdGhFKtX0nZg3Kbmvw/bgXPrtBXeJLoz9
 l6WmK2fMdPzs6fhlYDHFEvHI4hRU+xjkFpsq+uFTbwR9UDu1AlR2Y3dSSS02FAnkVGbk
 FWtg==
X-Gm-Message-State: AOAM531FdKSxvw9xpZ0negjbJe0QCpSvaUiwIFmBv8tMJmxdBEC3S+L7
 ZM1LNgpPEXtqK6E2vEywtwKafTzvLBXwigl9mVg=
X-Google-Smtp-Source: ABdhPJy59oVRkPVEN4voJbLGM7dw89jFQV1IkAbP7w5vIw5ihwPYB/4xUYNNRCMM7AIxLTApxZzhjrsFzU556YaqF8k=
X-Received: by 2002:a9f:2315:: with SMTP id 21mr21442759uae.143.1632320646151; 
 Wed, 22 Sep 2021 07:24:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a67:ca19:0:0:0:0:0 with HTTP; Wed, 22 Sep 2021 07:24:05
 -0700 (PDT)
From: "Mrs. Fedora Borislav" <nnakhodorkovsky2@gmail.com>
Date: Wed, 22 Sep 2021 15:24:05 +0100
Message-ID: <CANBA4+eg6G54dzBn-sbZnXnTeiVKzfZwJxx=mbXxb1GBBMjQzA@mail.gmail.com>
Subject: HELLO
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
Reply-To: mrs.fedora@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Hello

I am Mrs.Fedora Borislav from Russia, i have a business proposal for
you. Please reach me on my private email for more information.(
mrs.fedora1@hotmail.com)

Thank you.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
