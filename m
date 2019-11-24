Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 536AB108379
	for <lists+driverdev-devel@lfdr.de>; Sun, 24 Nov 2019 14:32:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C377485DCA;
	Sun, 24 Nov 2019 13:32:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vi_IG2cRRNnR; Sun, 24 Nov 2019 13:32:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2CFB785DC0;
	Sun, 24 Nov 2019 13:32:26 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CD1331BF59E
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 24 Nov 2019 13:32:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C539B87D48
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 24 Nov 2019 13:32:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 05Ta9Bf7tuP8
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 24 Nov 2019 13:32:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4893C87CD2
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 24 Nov 2019 13:32:24 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id j13so13223776ioe.0
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 24 Nov 2019 05:32:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=pI7cV3FDgc1XH+A619u5I2fUvKpFMBjQiQlWPO2Scvc=;
 b=fgP9ETu9TnwIymNjEF+2MyfzQySXFzmzo33KR8THJkDilEHq1a1wGgEZFCbpu50cwN
 yx9ppxCgua0KFBY0L3S3IwPn9gYFg+XzTd8yg9/zRGuYT1lAwvCePcpbttHKq1X06RWk
 cWgKUmHii9E6+m6fw2SRid72f74iNY0EyeZDibces/fPWVWL4LICTNHkrU7WTILBv3iK
 XGAO4nHXC2VxTV1Njurll7+ShRoxHzrxL0peVIRXGg+Q4MZiFyNITarVwR0g5XAeRxYV
 gZezRjyhcYu+TZRASlwENmaAK6vmN2//dQU631tWBAPxzPjkwvnoGH1kotCSSgIA3VVI
 0Xdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=pI7cV3FDgc1XH+A619u5I2fUvKpFMBjQiQlWPO2Scvc=;
 b=i24wluqcW9k6GwG6A4u7pmHnPcWp5n02ms7TGJ5KuC7H0RS9nx/bWPkN0DAj7z6h1X
 xy7f2/OU9Cs6y0ULEtjyvTqMpxVQEqcismYs4XqjBXFEQ+IC5naIe5lxx4Xz7ChDC/Um
 SZ+X4W9mAzTYo0EzFfAgOVGK3JGylHHwiQPjgS2rM7wvRljcFquZEZRDOH/QVdoJ9NyM
 Yp9DZimSjfa0UeUzloEO3GOqYPR07WFVv7vf6jEBwCG4rQtSnpw7bRue8XYdG+f3O6OC
 iZ8VhWoiHnUdj+PpZjbjn856WZBOywq3dP91GJF5uLbRl9yPG+DGxJ8DKnfRh9wA+eMi
 EceA==
X-Gm-Message-State: APjAAAVSqfge+V1K9u4q5E/JmYsMYqw00jy+SQCWj1CU43jip3fcDHzJ
 /Qt1UMtDRyRIEa8DSRhXdJNVmLhhSZp+47v0HWI=
X-Google-Smtp-Source: APXvYqwc1Ja8ettV7YkdGI1Y0lG8045xIHRl0pWIcDfhl4E9SaRSJjW6rKB4DSFTKM2V/kmQiRp8U3tIg4S6qmK8wOY=
X-Received: by 2002:a5d:81c8:: with SMTP id t8mr21816502iol.204.1574602343629; 
 Sun, 24 Nov 2019 05:32:23 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a4f:4fd0:0:0:0:0:0 with HTTP; Sun, 24 Nov 2019 05:32:23
 -0800 (PST)
From: "Mr. Joon-Kyu Lin" <johnpfox60@gmail.com>
Date: Sun, 24 Nov 2019 05:32:23 -0800
Message-ID: <CAHLmmYMN2=50GgRkFPiSJNJYcCLNb5P9Z0LHB7Wt4xrTHwGyig@mail.gmail.com>
Subject: Venture Capital & Private Investors
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
Reply-To: afginvestmentbrokers@al-faisaliah.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Attention:

I am an investor that can provide funding for any viable business idea or
venture.

Please do let me know if you have fund management abilities, credible
projects in need of funding or advanced stage projects requiring Bank
Guarantees, Loans or Partnership, Joint Venture, Equity, we would be
delighted to work with you.


Best Regards,
Mr. Joon-Kyu Lim
Al Faisaliah Group (AFG)
Venture Capital & Private Investors

--
*This email and any attachments are intended for the named recipients only
and contain confidential materials. Any unauthorized copying, reviewing,
dissemination or other use by anyone other than the named recipients of
this communication is strictly prohibited. If you received this email in
error and/or are not a named recipient, please notify the sender (Al
Faisaliah Group) and delete all copies of this email. Thank you.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
