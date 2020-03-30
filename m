Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D89C1973B3
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 07:12:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6EF5D8643D;
	Mon, 30 Mar 2020 05:12:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dDmSRrhmVMZ5; Mon, 30 Mar 2020 05:12:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 43EA3844B7;
	Mon, 30 Mar 2020 05:12:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5AB2F1BF44A
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 05:12:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 573BF85E5C
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 05:12:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OLUJSOt4FI06 for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 05:12:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 17EE5844B7
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 05:12:36 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id c145so17702485qke.12
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 22:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=82B0OONv9gwbZlPp43NzThDz2fRV+KRFwafOQ16joDw=;
 b=Y5XAdEmx40RzmTY/Unaruy3U3PdTsM3JUn6EO0h9x87eiRWCjTtnwfyveYhKEAcZ6b
 wq2gTZcTiUioDvV6U8MK2yAxv6suk5uP0xk5FFyjzkQiwGtwWpplZMut7Bdo6lKGMd4R
 mTs+qj6il/m7T4L9Jk2r4/Npmx2EF1doy6ccopUFHOkjq5uOcilTCw6j7/VIg0z/q3vU
 x8r1yxjx7jWKgx028IERja4fQ5977jT4aBm15NjmUPf3WKiUXzuXSwOORZu25bEsLxNV
 PoZF7ldfdwUKQPrQOW6UNZ9X5GbiIgvWh6e4NV9fxQkd94jAZ7lPb3Lb1TqHSEApVFxH
 VpSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=82B0OONv9gwbZlPp43NzThDz2fRV+KRFwafOQ16joDw=;
 b=FlTdyoc+YdqLE6V9veoEUmsQP3kL0ZyFBz6BdSXlW0t0kgMzdkGWK93bMDN66bq0rg
 CRpsb2nET0hnB4Czwf0j0K/nRFJk0gr8MTnLYYT/Ys3amXb7RD1muzqssrb5u5PcgRfF
 SKKaxklOUkgaNwV0mka9puqxbViw2BGzQJtcQ3WPhw6MVH3Zcv01abaMOdUcmEo0+8mE
 WMXRAYRx4E2JQk2Fv0AcP2W+ihNL7M6LBizIB7T8xciuhihO4jf4+Bx+IusyBUPTWWgi
 +cRPb3pFLZOT/xUSTQAu8mLV0yM7mlJRrO1/PwbUNDEO9mHZE68SfGMzMvSDBP2naFcd
 Gyaw==
X-Gm-Message-State: ANhLgQ3xMomLpGK2zaaf7D6dpA+KfAF2kafRy8TqaeADhywdpgJZxRlQ
 3KIshs006VdVUnDv5rNXbfVnTOOzCR0nMHBkpOs=
X-Google-Smtp-Source: ADFU+vtEZKNIJ9cZu4lh443YL6EExzUUn6o0YrznXLg/T4NOf4KX5uaZtjDSSVPmC/vLmhbU4lf44de3px60QUpBGlU=
X-Received: by 2002:a37:6388:: with SMTP id
 x130mr10271756qkb.429.1585545155158; 
 Sun, 29 Mar 2020 22:12:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:3181:0:0:0:0:0 with HTTP; Sun, 29 Mar 2020 22:12:34
 -0700 (PDT)
From: "maryalice - maryalice:" <maryalice00.06@gmail.com>
Date: Mon, 30 Mar 2020 03:12:34 -0200
Message-ID: <CAJrXg5RDB4je2x-gKW826VJuALg0oOP_2dAXqEcfhtZidfAKpw@mail.gmail.com>
Subject: Reply For More Details.
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
Reply-To: maryalice00.12@postribe.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
My dear,

I am Mrs Maryalice Williams, I want to send you donation of two
million seven hundred thousand Dollars ($2.7M) for volunteer projects
in your country due to my ill health that could not permit me. Kindly
reply for more details, and also send me the following details, as per
below, your full Name ..........,  Address...........,
Age...............,  Occupation ...............

Remain blessed,
Mrs. Maryalice Williams.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
