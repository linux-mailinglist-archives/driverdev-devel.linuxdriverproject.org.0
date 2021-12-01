Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 872B0464BA5
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Dec 2021 11:30:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8E2E2403BE;
	Wed,  1 Dec 2021 10:30:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hu7Zd7wH-ifQ; Wed,  1 Dec 2021 10:30:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3CFE74033A;
	Wed,  1 Dec 2021 10:30:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EB96B1BF296
 for <devel@linuxdriverproject.org>; Wed,  1 Dec 2021 10:30:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D98A2403A4
 for <devel@linuxdriverproject.org>; Wed,  1 Dec 2021 10:30:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pZt9Qn0nV1zl for <devel@linuxdriverproject.org>;
 Wed,  1 Dec 2021 10:30:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com
 [IPv6:2a00:1450:4864:20::143])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3FC214039E
 for <devel@driverdev.osuosl.org>; Wed,  1 Dec 2021 10:30:23 +0000 (UTC)
Received: by mail-lf1-x143.google.com with SMTP id bu18so61706634lfb.0
 for <devel@driverdev.osuosl.org>; Wed, 01 Dec 2021 02:30:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=NWKMZ//AyFWFbpFk6FF66OtPadVuan7a1ybZS8hGNR8=;
 b=bhsejUJ5j2Thp5+fiTxXTVoydjOEpiiQqSQgofInF7L8SMVIMBmk3Y0eVlRdhqjheM
 jigLdLz7jMu9olP17XOEkHsdFhIP5gEFix3t6or3gq38X8V9uNvSfUZu89uzF3OWQgK4
 X/N30LGBDeKBvpP6ruIVukoinVO/hqDsyesukEKHi0E6VeiY4avk2YBQl5qhgEkRM0oK
 xfBMp1Lm/gl6lMEqyuuvnwnUVKl2Np05LqkLU3BM2H+27JF8pHn4jrowA9PvGzdNRmbj
 NuViCk/pL7G5xxYKxZv/acVegufcBSh5ZYc3L+T5m2EAJf6CGpextOURLW+7VqQnloL2
 g77Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=NWKMZ//AyFWFbpFk6FF66OtPadVuan7a1ybZS8hGNR8=;
 b=mWHF+kkd6UkVb2nLKIbLXHTUJRKSUoBUH6RDsb3k3OFSVWjQY9jbrw7JbAlR6B1gHd
 hWDv9R64GIjBluttiBAR3HVPVTmgwMAbkCiYF74kzZqTiVuosLDWRTycjJuJSrj2IWmD
 FFisoHvFa6JvVHmIAHkYRGlvZZ4cRpLiWBmIHTVPkm4eVRmorL/gQjZnlo6reiCJl5OV
 DDwBUyeB6HWfjQ677ba6J0mUcLTUgourG53YDDkWHSmdrjKA9AEyc9g0+92RH+RW6Y4D
 SH0CPoV14kNK2Yo/ZnPBVfz05W+qcJrENPGcSagJFzYiFMk0wJ8LQwAuQYVw6nHsxVUz
 tEVw==
X-Gm-Message-State: AOAM533GtRsdSGC/VDjBDK6+vbBP1ja/IeWJfpTpsYpxO9gQZLFK34hR
 8kMajr8Msv5XW3AIjWcukIlY655pvG3UG2qBflM=
X-Google-Smtp-Source: ABdhPJzJCoRyco+WlXSqG92zsHHDaqfw1h23DrJcr548CmiG9gy2VbNSAea4IOM5a847SIsxwVNNwAFcrE9V/xAXlE0=
X-Received: by 2002:a05:6512:3d8d:: with SMTP id
 k13mr4930992lfv.672.1638354620941; 
 Wed, 01 Dec 2021 02:30:20 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6520:4448:b0:150:9bb9:b9f6 with HTTP; Wed, 1 Dec 2021
 02:30:20 -0800 (PST)
From: uhenna <tochiuju010@gmail.com>
Date: Wed, 1 Dec 2021 02:30:20 -0800
Message-ID: <CA+CavFLgTn59T9eQLf7wMyHChQ4Cds36u388Z8xqi32FAvnbig@mail.gmail.com>
Subject: 
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
Reply-To: uchennailobitenone@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Attention Please,

I am Bar. uchenna ilobi ,  How are you, I hope you are fine and
healthy? This is to inform you that i have concluded the transaction
successfully with the help of a new partner from Venezuela and now the
fund has been transferred to Venezuela into the bank account of the
new partner.

Meanwhile, I have decided to compensate you with the sum of
US$350,000.00 (thiree Hundred and Fifty Thousand United States
Dollars) due to your past effort, though you disappointed me along the
line. But nevertheless I am very happy for the successful ending of
the transaction without any problem and that is the reason why i have
decided to compensate you with the sum of US$350,000.00 so that you
will share the joy with me.

I advise you to contact my secretary for Atm Card of US$350.000.00,
which I kept for you. Contact him now without any delay.

Name: solomon brandy

Email:solomonbrandyfiveone@gmail.com

Kindly reconfirm to him the following below information:

Your full name_________________________
Your address__________________________
Your country___________________________
Your age______________________________
Your occupation________________________
Your cell Phone number______________________

Note that if you did not send him the above information complete, he
will not release the Atm card to you because he has to be sure that it
is you. Ask him to send you the total sum of ($350.000.00 ) Atm card,
which I kept for you.

Best regards,

Mr. uchenna ilobi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
