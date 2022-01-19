Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B512493BA3
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Jan 2022 15:03:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A929782A83;
	Wed, 19 Jan 2022 14:02:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xUkWwHUtXPiu; Wed, 19 Jan 2022 14:02:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E6A6482864;
	Wed, 19 Jan 2022 14:02:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 46B401BF342
 for <devel@linuxdriverproject.org>; Wed, 19 Jan 2022 14:02:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A63BA4154C
 for <devel@linuxdriverproject.org>; Wed, 19 Jan 2022 14:02:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k-_MK8nNUSqA for <devel@linuxdriverproject.org>;
 Wed, 19 Jan 2022 14:02:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com
 [IPv6:2a00:1450:4864:20::129])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DD1004022D
 for <devel@linuxdriverproject.org>; Wed, 19 Jan 2022 14:02:46 +0000 (UTC)
Received: by mail-lf1-x129.google.com with SMTP id m1so9810652lfq.4
 for <devel@linuxdriverproject.org>; Wed, 19 Jan 2022 06:02:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=dklivQ6EYkrqC+kXV+BGD3A0LCbVQfbKLI5XsQwXNxE=;
 b=CDOtyuHvxemlire8t6SnfgF5V8V3P19tcLUUyJlQW1uyxx6ilt8unVN8Qdq0MeV5G8
 O4YFPWnBbyXhHD+Kjb+9Tav5vh0Nr5YU/qtrC1GfXnpNOclahRaoN82nGmI8NMaRT4qr
 rBmbCULSBUgF8Qdphp5BK3wRa4NklEfvY4M7FlAlFzKBMfsa+or4rDQl8Vxbyb55KX+7
 1ieimb/PN2yiBneTNvbSRdD9lJd/5i1oDmGtgOClJl+2kijC4R+FB7IQaRCVjsVIxp2s
 NluHPAU6dsCGe+yBXR/EoK9YN6+cyzz74V2+TkDbJm2yHqOC/LvZtZQpS/W9Mtcu5Z63
 NwoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=dklivQ6EYkrqC+kXV+BGD3A0LCbVQfbKLI5XsQwXNxE=;
 b=Y47LfArhf5j5tZ5gKtsXYqJFEG02CnzRBAhCYx7HmkUIP+RjNz9XzCG+zFOnDcQHxh
 9FkyH/xp1QHCwVfFJBstcrls8woFap5v9Ers4b8j/xyDNvfxp8AqLsw3WPKpRH2rdIxR
 H0tVUMNmtyhOGGOepl0DFWSH9SNXoyk0EbFZ5q2qpuwifu9lCaPScTepFsWTiI5v+Uwy
 +iSKfcR228BshffUcdeay6QK1K3c/6s94Mao75NYFotUqRgV42DdxOeHxlj0zPmeBjv7
 SudPt+5B92XS4JIK+ecdmzyQa790zpkMZeP264/GIWSuwDR6XwNo6nKcIg6SsTVnL9wp
 oJlA==
X-Gm-Message-State: AOAM533om0ph05gMdgE8K2mRZDSmX5IsBYEbxQoYCtrejJOq2wXyDll5
 8ReMXqLTW+kR+7ER4OiI2uf8OeCQHruGsnnvUWs=
X-Google-Smtp-Source: ABdhPJxLXIgNefA4xS8GrI54WTBnvS0v/KA4IpJcPyNfomx4q5JYw8HMlo6MUSTo0FkPAnCqX9uJcLWF5lRoL15z+nU=
X-Received: by 2002:a05:6512:21d1:: with SMTP id
 d17mr16438876lft.452.1642600964310; 
 Wed, 19 Jan 2022 06:02:44 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6512:139b:0:0:0:0 with HTTP; Wed, 19 Jan 2022 06:02:43
 -0800 (PST)
From: mirabel eddy <gracooo889@gmail.com>
Date: Thu, 20 Jan 2022 02:02:43 +1200
Message-ID: <CAGpoYxhQB-RA82fOAsy2zNkjcmN70Voc8u++tBeaPi++cTyhrA@mail.gmail.com>
Subject: GREETINGS
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
Reply-To: mirabeleddy458@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I am Mrs.Mirabel Eddy. Am an aging widow suffering from long term
illness(breast cancer) I am currently admitted in a private hospital
here in Abidjan cote d'Ivoire, I have some amount of money I inherited
from my late loving husband Mr.Gilbert Eddy. The total sum of
(US$6.5M) which he deposited in one of the Banks Here and I need an
honest and God
fearing person who has the feelings of human that can use these
funds for Charity purposes and 20% out of the total sum will be for
your compensation for doing this work of God. Please if you would be
able to use these funds for the said purpose kindly reply to me.
Best wishes,

Mrs.Mirabel Eddy
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
