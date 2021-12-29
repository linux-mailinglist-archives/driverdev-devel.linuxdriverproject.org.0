Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 91268481380
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Dec 2021 14:29:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B79A2826FF;
	Wed, 29 Dec 2021 13:29:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BgKnKRHuu7ob; Wed, 29 Dec 2021 13:29:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A0F7813E0;
	Wed, 29 Dec 2021 13:29:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B450C1BF3E9
 for <devel@linuxdriverproject.org>; Wed, 29 Dec 2021 13:29:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A42FB4092E
 for <devel@linuxdriverproject.org>; Wed, 29 Dec 2021 13:29:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZG8goPKxfedT for <devel@linuxdriverproject.org>;
 Wed, 29 Dec 2021 13:29:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com
 [IPv6:2607:f8b0:4864:20::835])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1EEF74092A
 for <devel@driverdev.osuosl.org>; Wed, 29 Dec 2021 13:29:32 +0000 (UTC)
Received: by mail-qt1-x835.google.com with SMTP id f9so18884696qtk.4
 for <devel@driverdev.osuosl.org>; Wed, 29 Dec 2021 05:29:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=hQ5DbP4MITHgtHViXOya0lanhcMqZ8b4WidUu29kIn4=;
 b=UuwxXXDODjBzaIxjxT7+cGb9PVavPyQmbr1KDYzI55ozG07ug8SmPl9amkL675NOb2
 tsYCEsflFpcq63eiWeNw1tqSqdlbP0W+f28FVLsKS+zqLiNtxQ9o1J+Uc1Wc+6flxCDn
 PNudB81v76F92kIvQl9QJc9y56QY5h2K+F50l9h8Q/hl1rolYSmUiG/2rf0s8HEm1Ze3
 slVMW7FQOrcXVrTMVD18LxlTpKB87kaHYqxd3UUFQuoQqJTuPGPnxSqKNFp/DzemTO0j
 TS71reWglkshFk8b9ruBpCrFyccmOT2hZzS9bZ6rVRjHBLCjLFW1UC2/mH3mJzdaoJsg
 QBpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=hQ5DbP4MITHgtHViXOya0lanhcMqZ8b4WidUu29kIn4=;
 b=xlLKP8SRmRFr+wYSb6ZqqOSO0H8Dqp70UuKNMA+8b0cTiTph5KdrqtytNlXpVBDCAE
 TDQ/6q6bG8/piLrqxhTJRJhdzxKGpdTE2oK89bfW2W3bT7t9Oox5m8UoIlhLyXnJc/aC
 LILync0fu7VSyOsCq1JFd2Fa7b0QFx/wpc2IX3uXnl1KirBHUXSVa8LWuRVwSBsoOLTA
 9QX2Cu7ej35dJgPtLjNedFWfDgE4JmDiji8Vz0RjkVfQ9vm4FuvTdCpVqy7HBeK0Agq0
 JuN+MhkKaK6PWZxYZs37G+p4bCByu7zpdhjc6mUjymDaiKhFp1h3akSpOBWz/eKqlg04
 FNLw==
X-Gm-Message-State: AOAM530G+jk9k/Mu8AjeuB0XgqRfX+ZiG0DQfzqMG8DEBkEyn11H/ZWR
 wQZVTuC1dv+OQ+FRbhUm0r2EJc/6TUQn0mGhOAk=
X-Google-Smtp-Source: ABdhPJzcGrshavgCsUg/EPZatF175S7oK9wf+yCIWckzPUfYDABVaZ35rV0Q1y4yYSnachxyi0DNA4OhmHami3K2A0k=
X-Received: by 2002:ac8:5dd0:: with SMTP id e16mr22184341qtx.563.1640784571906; 
 Wed, 29 Dec 2021 05:29:31 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:c2f:0:0:0:0 with HTTP; Wed, 29 Dec 2021 05:29:31
 -0800 (PST)
From: Mrs Aisha Al-Qaddafi <mrsaishagaddafi344@gmail.com>
Date: Wed, 29 Dec 2021 05:29:31 -0800
Message-ID: <CADgtnOOHL=f=HXfZUC75VCK1GCdQuBp48EWbcj7ftwKRpSgCsQ@mail.gmail.com>
Subject: Dear Friend,
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
Reply-To: mrsaishag45@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend,

I came across your e-mail contact prior a private search while in need
of your assistance. My name is Aisha Gaddafi a single Mother and a
Widow with three Children. I am the only biological Daughter of late
Libyan President (Late Colonel Muammar Gaddafi).

I have investment funds worth Twenty Seven Million Five Hundred
Thousand United State Dollar ($27.500.000.00 ) and i need a trusted
investment Manager/Partner because of my current refugee status,
however, I am interested in you for investment project assistance in
your country, may be from there, we can build business relationship in
the nearest future.

I am willing to negotiate investment/business profit sharing ratio
with you base on the future investment earning profits.
Best Regards
Mrs Aisha Gaddafi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
