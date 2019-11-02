Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F37ECE9B
	for <lists+driverdev-devel@lfdr.de>; Sat,  2 Nov 2019 13:14:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5E159853F8;
	Sat,  2 Nov 2019 12:14:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i7w9sSEfPWAL; Sat,  2 Nov 2019 12:14:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4FC2C841E3;
	Sat,  2 Nov 2019 12:14:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 938C21BF426
 for <devel@linuxdriverproject.org>; Sat,  2 Nov 2019 12:14:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9040D303A6
 for <devel@linuxdriverproject.org>; Sat,  2 Nov 2019 12:14:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kY+ZZiyYsZvg for <devel@linuxdriverproject.org>;
 Sat,  2 Nov 2019 12:14:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f193.google.com (mail-il1-f193.google.com
 [209.85.166.193])
 by silver.osuosl.org (Postfix) with ESMTPS id A77D32F44B
 for <devel@linuxdriverproject.org>; Sat,  2 Nov 2019 12:14:45 +0000 (UTC)
Received: by mail-il1-f193.google.com with SMTP id d83so10916389ilk.7
 for <devel@linuxdriverproject.org>; Sat, 02 Nov 2019 05:14:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=9x0D56ZwARqyAJI59crbpwifItY15fznRZNu+zcNOLw=;
 b=SwQWVFR1/aE/3p6eCOZAcbYlIkRyOhX4OMmCqZfL1VeinYOBeyQ14hJG6/GPUfLYIF
 wXYVOdKh5wx/zl5mEArZ/b64U3K7z9a/7O4hVJqXrYarYQqgwNNypM+4u9GsnZXqkJYl
 qQpFSDE4SY/D0c0fF+sfGPMSRAoJFrRXdV+o3geUykNqdNwT7dvc4zfUX/QOKCHHYs4b
 jGSVPUxSzGk1p8jOOrifILb2IdU5Aetr36hg08lF25T0ZcV93SqH3rU/2mhrKfCyKMBH
 oXB9Iy9fZ9Wp0jRCmw9bieNGxWWkm3r0Gv9BFCKxmU5ZGKuFKFcYDV/EoEz0ffYZ2sOM
 WQwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=9x0D56ZwARqyAJI59crbpwifItY15fznRZNu+zcNOLw=;
 b=aQHn7kCl/qaNzTox3PdMrCwklnrGphjZyEO/iAzuUHTwWu7B49tiSCn5EoXbQPcQJy
 +qqzNaljULZ7920Q+WE+U7QIR8feWVEob6m/Jj5+acOvxG89l+oAQoCFb7MNTHetKkpN
 QcdpBts7DUTJa4lpLX3s2aceK0I0RRNBLvgXK7Qlhw8tpYXi8+L/16czXZ56xhEVoM7f
 jMK+aL00RbbaJJ/DVIqZuVCjhWZMCXYfc8bshtGtjV6X2Yi4HUhEtUvKzCAiDlOjuSx1
 tcsDOG3dK+E2lde5o/hHWnHW4vob0l3yQnxiJYB7vqLwIOqS9yy8BbBgoVVwr1UZ/IYL
 ds3Q==
X-Gm-Message-State: APjAAAWFkESmDqdUmKhV7G7+fxOx1BKK+bkQE59jDJO92E5kPVR+DZHP
 hG1mdIqnUXy8F7LKKVZLaEj9NN/94fMPACeSxbw=
X-Google-Smtp-Source: APXvYqydWOFmlgUWCtiXqdMfpXOeyDwsLAltin1mq8/skfwwwlGgciuOwdCcMSwu7434Uh7EulrWDeLfFilWBPdE0ic=
X-Received: by 2002:a92:6501:: with SMTP id z1mr9081699ilb.125.1572696884936; 
 Sat, 02 Nov 2019 05:14:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a6b:4a10:0:0:0:0:0 with HTTP;
 Sat, 2 Nov 2019 05:14:43 -0700 (PDT)
From: Miss Basirat Ibrahim <tarhouni805@gmail.com>
Date: Sat, 2 Nov 2019 13:14:43 +0100
Message-ID: <CAGD2OuYKkn-cShxMMf1GvFdGxKu=sLsxDdeVYXNmUKz2gOE6=g@mail.gmail.com>
Subject: With due respect From Miss Basirat Ibrahim
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi

My Name is Miss.Basirat Ibrahim from Libya, am 23 years old, am
presently in St.Christopher's Parish for refugee in Burkina Faso under
United Nations High commission for Refugee,

 I lost my parents in the recent war in  Libya, right now I am in
Burkina Faso, please save my life i am in danger need your help in
transferring my inheritance, my father left behind for me in a Bank in
Burkina Faso here,

 i have every necessary document for the fund, all i needed is a
foreigner who will
stand as the foreign partner to my father and beneficiary of the fund.

The money deposited in the Bank is US10.5 MILLION UNITED STATES
DOLLAR) I just need this fund to be transfer to your bank account so
that i will come over to your country and complete my education as you
know that my country have been in deep crisis due to the war .And I
cannot go back there again because I have nobody again all of my
family were killed in the war. If you are interested to save me and
help me receive my inheritance fund into your bank account with utmost
good faith

Please get back to me.through my private Email    hm36813999@gmail.com



Miss.Basirat Ibrahim.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
