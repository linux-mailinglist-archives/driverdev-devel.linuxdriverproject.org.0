Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B25D136036
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Jan 2020 19:34:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BBD21883D7;
	Thu,  9 Jan 2020 18:34:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id riUU93U7tcFV; Thu,  9 Jan 2020 18:34:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 18766883CD;
	Thu,  9 Jan 2020 18:34:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6CABA1BF41F
 for <devel@linuxdriverproject.org>; Thu,  9 Jan 2020 18:34:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6602885FD0
 for <devel@linuxdriverproject.org>; Thu,  9 Jan 2020 18:34:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m8hzINs8h1Lb for <devel@linuxdriverproject.org>;
 Thu,  9 Jan 2020 18:34:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f193.google.com (mail-il1-f193.google.com
 [209.85.166.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 58EE585FC9
 for <devel@linuxdriverproject.org>; Thu,  9 Jan 2020 18:34:48 +0000 (UTC)
Received: by mail-il1-f193.google.com with SMTP id g12so6541826ild.2
 for <devel@linuxdriverproject.org>; Thu, 09 Jan 2020 10:34:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=wjEPAcCB9ChJWBCWxQyuWyaFPQyw6HCZ2YKBaBbQkbo=;
 b=pQMBW8hxBMmeFCxSXq9sRTmwa3TC5YJgx6VrEoMNH/3IVK1hnJ8TW6rdt+DPRq3NxE
 fTOAFaXoLjuqcAYtQzlC1kPmOE93opz17Rni3rWTYwki/mcwsnpGs3uVehvrKOpUVxkI
 UxB83rSb0HNNA1y7W5IvCvIonJtxy+Wqozk86kMPNrH95kTfrJJyqXdBKyKYTCsVfLSn
 wyoNIi7m9R/Ej8rIeQPTZyA0MUk6zl8jy5/F2GrJIAWaH7Ym/BjRit1fs/6hWk46UmGr
 OttLoRkaWz9B+PX/2NJNzEtehpZRaKs+WFOuT0DpSToKZDPyKieb7JZ+CqCM0+KTO0hr
 3W1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=wjEPAcCB9ChJWBCWxQyuWyaFPQyw6HCZ2YKBaBbQkbo=;
 b=kRpzuEBpoWinfTdFMDDBbz1ao+TFVK8nDMcradQdZfvXQ661gTmIFOCCc+5f3tszdA
 bU69j4blLzmTM+cJXY63/jE/tQvw42qoDq9fnO5dp07NMm4tNpxQMczVF3eYrg5zyAYh
 J5TdBnj/iRLBgKryRI0Sy1RoQ9xUPufZkeyvuE7PlDM3Xq7VG8S1MhZP7PK38D7EK3pM
 bZ98vH8UmCFiBCzXos5jJgIxRaoeb410vuvLWaJ6okKweN4RDRNGmqg21nKW3pNFJDWn
 YqGQd/RtaSeTTl4Rdlyr+Jw0dNENAAr9TLPP+FGuOPnoy1sxdZ0scWd2aK/gZWWWN+Fn
 ehWA==
X-Gm-Message-State: APjAAAWkRcCkvVE9f2mpHJwFjElpJeThf79Wi8iTwZl7Xp0Y2T5wXHcj
 SlIsc5GXTlhhcirCmDRS0g18BY6fMEW7OQyplw==
X-Google-Smtp-Source: APXvYqzPcgEqy/UGcvw+szKEiM0VaEjnX7fwkO30Av2/M9e6bXiXUI/RQHy3q3nygxb3nJxeGdE/EBvUn/fXOlnYzME=
X-Received: by 2002:a92:c9cc:: with SMTP id k12mr10057788ilq.269.1578594887753; 
 Thu, 09 Jan 2020 10:34:47 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a02:6603:0:0:0:0:0 with HTTP;
 Thu, 9 Jan 2020 10:34:47 -0800 (PST)
From: "MS. MARYANNA B. THOMASON" <info.zennitbankplcnigerian@gmail.com>
Date: Thu, 9 Jan 2020 19:34:47 +0100
Message-ID: <CABHzvrn=UW_o-qo5ChQhN+=1Ub0d5iYTxS3mMPNz0fzLqwQGdw@mail.gmail.com>
Subject: CONTACT DIPLOMATIC MIKE BENZ TO RECEIVE YOUR ATM MASTER CARD WORTH
 $12.8MILLION US DOLLARS,
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
Reply-To: mikebenz550@aol.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

ATTN DEAR.

CONTACT DIPLOMATIC MIKE BENZ TO RECEIVE YOUR ATM MASTER CARD WORTH
$12.8MILLION US DOLLARS,
CONTACT HIM ON THIS EMAIL ADDRESS

EMAIL/ mikebenz550@aol.com
PHONE (720) 928-6289 TEXT HIM AS YOU CONTACT HIM TODAY OK.

HE IS WAITING TO HEAR FROM YOU NOW. WITH YOUR FULL DELIVERY ADDRESS
SUCH AS YOUR LISTED BELOW.
YOUR FULL NAME
ADDRESS
TELEPHONE NUMBERS

I WAIT TO HEAR FROM YOU ONCE YOU RECEIVE YOUR ATM MASTER CARD WOTH
$12.800,000MILLION US DOLLARS FROM MR. MIKE BENZ TODAY, NOTE YOU ARE
JUST REQUIRED TO SEND HIM $25.00 ONCE YOU CONTACT HER FOR YOUR ATM
MASTER CARD DELIVERY FEE.

ASK HIM HOW YOU CAN SEND THE DELIVERY FEE OF $25.00 ONLY TO HIM
IMMEDIATELY TO ENABLE HIM DELIVER TO YOUR HOUSE ADDRESS VERY URGENT
TODAY OK. THIS IS ONLY HELP I CAN YOU TO RECEIVE YOUR FUNDS NOW OK.

THANKS FOR YOUR COPPERATION.
MS. MARYANNA B. THOMASON
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
