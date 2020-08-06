Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6E523DDF6
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Aug 2020 19:20:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EA41B8700B;
	Thu,  6 Aug 2020 17:20:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DXH0qRexRtTb; Thu,  6 Aug 2020 17:20:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B93C186F83;
	Thu,  6 Aug 2020 17:20:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E65751BF9B9
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 17:20:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E1C49885DC
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 17:20:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id erafAGLh41AX for <devel@linuxdriverproject.org>;
 Thu,  6 Aug 2020 17:20:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com
 [209.85.218.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F3432885C3
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 17:20:31 +0000 (UTC)
Received: by mail-ej1-f66.google.com with SMTP id g19so37339185ejc.9
 for <devel@linuxdriverproject.org>; Thu, 06 Aug 2020 10:20:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=YHJ88/Fv1nDyiHHG4QxKerimQdVIuLlexNt0JGwO5/k=;
 b=SFE1sSfwfzP82jU7e8JiQiypltbyqI8xSCKrgGf31OztKW1kU/EodlM7sbawojYLPa
 qU8WcZOGTwmM5pW1+HB4YTRBrznJm9KXsvsyeJEO1F30o3LM7P0Ujl0lWKRpgfCXlSwN
 d2BT4XpDLq1Rubqv/UzxvjKetooveBA4s1jppTut6FXB3YgjaTfPBRFQQP28RBKfln76
 xVHcypfceQu3Ul4SedFdcbxjm4YwoG/5UG7QrexC9iWqI2mYAb5rcFeD0+O8eu8OTng1
 DyLvAV2jVLuVfPY7dMO+aZVSlKeRo9LtASVOw96UxwoT4z/JCiMlhWUXABEnZplOUzSP
 3TZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=YHJ88/Fv1nDyiHHG4QxKerimQdVIuLlexNt0JGwO5/k=;
 b=EVbNqq2o1Ta4R0ln/SuqRd6NNueIJkUkCx6eGnA3IxHdm/exnXW1JHgFGkDk2HMM/O
 pQ4n3nALBOjkr2wuwcHW2lrFharvkzC+Zpw1eP2gIbJTJ0pJ7uovhSen33dVL2cC64J6
 1q8AdjFjwSTUZAo7hpePS54HWNsLmRf26YmepGwNbD6Baq7xnx4S79H7w59AfGkc5GZN
 twDXmKSGgRtdzi88/xTa0Da+5tE8Xp59omQ3bmcW6nZ2MeaWJEoMQDk/4sejwoQB88v4
 2MayOsnHCVpLJ+ZWkGXIi9ZE9G4eFEcL2XtxrhtNQGYhhF+ShaiK2bQNMXOSgjRXnonQ
 cdYg==
X-Gm-Message-State: AOAM533bWzCXxzIsFZ8HEq5s65hjUwzZCIELJY16+hcmE2w3Nri7eUZg
 EOU7PiwCsQlJVQWQos3XTPUJ+2iF05ybREtmahY=
X-Google-Smtp-Source: ABdhPJwGVg+39f6uLJOeqAbYoeyz1wMUTibD448AgcSADq4ry0ZvvUoPMCCziQ0GkMkQtghkYrIloSxBfD2ppf2BpuQ=
X-Received: by 2002:a17:907:11d0:: with SMTP id
 va16mr5609612ejb.426.1596734430396; 
 Thu, 06 Aug 2020 10:20:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6402:220f:0:0:0:0 with HTTP; Thu, 6 Aug 2020 10:20:29
 -0700 (PDT)
From: David Mark <eco.bank1204@gmail.com>
Date: Thu, 6 Aug 2020 19:20:29 +0200
Message-ID: <CAOE+jADW_=AFk_47oSVcbyXVGm28gH7wY=xuw_OTyMXqw7-asQ@mail.gmail.com>
Subject: CONTACT OUR INTERNATIONAL DIPLOMATIC AGENT, MR. JOHN BENDER TO
 RECEIVE YOUR ATM CARD WORTH $12.8MILLION US DOLLARS, This delivery was
 approved today, 06/08/2020
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
Reply-To: john.b183@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Attn,Dear.
GOODNEWS FOR YOU.
CONTACT OUR INTERNATIONAL DIPLOMATIC AGENT, MR. JOHN BENDER TO RECEIVE
YOUR ATM CARD WORTH $12.8MILLION US DOLLARS, This delivery was
approved today, 06/08/2020
Contact Person, AGENT, MR. JOHN BENDER
Email: john.b183@yahoo.com
Phone number (408) 650-6103, call or Text Him once you receive this message.
Remember to send to MR. JOHN BENDER your house address i listed below
Your Full Name________
House Address____________
Your Phone Numbers___________
Let me know once you receive your delivery ok.
Delivery fee to your address is $75.00, ask where to send the fee to Him today.
Thanks and may God bless you.
David Mark
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
