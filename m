Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D54108370
	for <lists+driverdev-devel@lfdr.de>; Sun, 24 Nov 2019 14:29:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8BEB687D96;
	Sun, 24 Nov 2019 13:29:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QxK7yqUBRx35; Sun, 24 Nov 2019 13:29:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C9E4A87CCB;
	Sun, 24 Nov 2019 13:29:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D30A91BF25B
 for <devel@linuxdriverproject.org>; Sun, 24 Nov 2019 13:29:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D010685DC4
 for <devel@linuxdriverproject.org>; Sun, 24 Nov 2019 13:29:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qZkCCIv-lt9a for <devel@linuxdriverproject.org>;
 Sun, 24 Nov 2019 13:29:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f195.google.com (mail-il1-f195.google.com
 [209.85.166.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6C0A585DC0
 for <devel@linuxdriverproject.org>; Sun, 24 Nov 2019 13:29:50 +0000 (UTC)
Received: by mail-il1-f195.google.com with SMTP id q15so11662626ils.8
 for <devel@linuxdriverproject.org>; Sun, 24 Nov 2019 05:29:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=pI7cV3FDgc1XH+A619u5I2fUvKpFMBjQiQlWPO2Scvc=;
 b=VvA1R91asHbC2LEqUbtvKL4TEiv3LeQrWMe7y8quWmIhCym5hrzKz1Ig2jnsGhhpg0
 mk1tpZRvM+9p/fER4FGvhZkY46ejrfDDf+ahZ5gYXRhcaSJ7SEnPVFzHoodpYeJs5MKc
 VO3piZh1eorbo4pT0GSTTdkUAoWH3k7JNcot4/H0Fsz2PhBl0mYlV3VFS8bqJamCKJ2t
 i0baLYcqVgylX7Js7hjs9SN0XhPSR+Azj2K6h1fcbP1O83aXd2MMgoxfv0bbQXnN1r2o
 L1DWGGxatmR4VO8IY8mB/rNWAiHSLYXZtgByc38K7flizV8vSxsRtE6GRGf/8MqAbWp5
 Mgsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=pI7cV3FDgc1XH+A619u5I2fUvKpFMBjQiQlWPO2Scvc=;
 b=VAsWv4GC6CtJhfgn+7bWNrVLVM3z7zUBhfrqhl8XsWCk8edueXF4nJnKM4l+ySkyN+
 skZacoAAh9H/Zn64Za7aHRrc+CxC2fHPF1KIsVNf/+epeYnl9ta6Yfy7JrU7CFXp4tgh
 518n7xrJehPS65ci3KZA3gtOE+qtn2tpG+qHJxDOz3Q2g7muu+xhOcguIO62rC75jOF2
 X6e5rE+geGRzogbAfY5x+VwQuRokIUj+DcvB33fa2b23FI2hvm/MQI3UOBn1R5gpdufO
 Nb001WPm2cEccb3fVfJrUP4MlqYOF95WJCQMjh9eCmnkmBDKIM7FtVE3mfWm4odMmji7
 05tA==
X-Gm-Message-State: APjAAAWw7K7hLmgapiEaMIDyTZgmrZDSJ23bGVtMlbzIwdMcml1LVsob
 7uMfyLybayrJ8XxHUSqybwW8VvMI6f9nLPoAD7g=
X-Google-Smtp-Source: APXvYqxGncSeX4U55wK9LMj4S51ArLt5C+MhppJNXdT+hNI350ZjfDfW8nkfo1nT+uTL9RqdZxRa3ATzMiejtpCdmZQ=
X-Received: by 2002:a92:9c43:: with SMTP id h64mr6741427ili.109.1574602189774; 
 Sun, 24 Nov 2019 05:29:49 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a4f:4fd0:0:0:0:0:0 with HTTP; Sun, 24 Nov 2019 05:29:49
 -0800 (PST)
From: "Mr. Joon-Kyu Lin" <johnpfox60@gmail.com>
Date: Sun, 24 Nov 2019 05:29:49 -0800
Message-ID: <CAHLmmYOhrkDdE_9==j3REj+XWHt0UmtrKa9EWeVBxbh0zbSmpA@mail.gmail.com>
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
