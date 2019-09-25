Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 66FE1BD9AF
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Sep 2019 10:18:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A7BA485F2D;
	Wed, 25 Sep 2019 08:18:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KnLWHy-2VtNT; Wed, 25 Sep 2019 08:18:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C1A6184520;
	Wed, 25 Sep 2019 08:18:46 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C08E01BF3EC
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 25 Sep 2019 08:18:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8DC9C879A3
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 25 Sep 2019 08:18:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id npWhuecyBjix
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 25 Sep 2019 08:18:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com
 [209.85.210.182])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1E23687889
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 25 Sep 2019 08:18:43 +0000 (UTC)
Received: by mail-pf1-f182.google.com with SMTP id q10so2948980pfl.0
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 25 Sep 2019 01:18:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=MBIv4exBMsbFSU5ZS4hQ7aZv5Y8krcLJtoEmNe+3N4A=;
 b=NJcpkrKl3GW6YHN9/inzdAa5eQvIAG4CgUP37EjpPaxhz/NWcnjzqhxcPXB2lHoqVN
 7KEzy7w8+WYf8jobfIXPiewuppcLUjHBm6rWtb8u3abR/sPacZLIdrxKAGti0C82NqvA
 zebEGOT7W6tmw863P75ccsQgwQMR5tt+VQbjtC3b5+qoOt+2HpCVVl0v99MtLliYWpg9
 70wfP0J+Nd5oTec7dKzTsnvfXODIviXd25SXABfrVRXGFilBLtR/aOT1DPjm3PGczStv
 23feoeCzP4Dba5qAE4tBuZbgWk6mNMw4Q2bBlizjb65YCfIXr29nbS+qlJ5g9UWWty9y
 gEpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=MBIv4exBMsbFSU5ZS4hQ7aZv5Y8krcLJtoEmNe+3N4A=;
 b=OQA5txFQOo9f3w670cDMbf8nNslndBYpG2dhr9MwrQwGV7xkw62eB5GTGzAEtbzMkv
 +MOallw2l8CTrJqQW9l9N0Hw8znPO6wSwbqj1/ozwVZ37o8zcWHccxGM1jmjNGf7vPSr
 Q2nVUmfK91mW+eOg90w4mch1jtobuEhiE+PgH1tgB2GL9peeUWjMGSICzQ8Bvra8UccX
 Ckr4Ea5WiFDUIBbC6PvR+NDJ9cAEpix0X7xLbl9SCIEBWlWrIdfWMPVOB4PuO8l8xqXZ
 AF3ShOnaZU5hIbCGmQo5Giecyb+CtMe67AAYuGWN/kND5NIuE6PQYy/I3HNRhfX/GEmU
 IrLA==
X-Gm-Message-State: APjAAAUPlODKNcML32/UqJ7KnjaEVSPySTBgp8OjR++Ry345hEkxOkaR
 Ftx5ecaT6ZSj5EdVDjujnMx7sY780M8jhw==
X-Google-Smtp-Source: APXvYqxDsuIHmJIhwyamewaH/a7m0g1m8Ql6oJRGy8hWgRKodPlhvFNhT3klu7XG9iBpAh9VFAPGFg==
X-Received: by 2002:a63:d909:: with SMTP id r9mr7522331pgg.381.1569399522114; 
 Wed, 25 Sep 2019 01:18:42 -0700 (PDT)
Received: from SARKAR ([1.186.12.91])
 by smtp.gmail.com with ESMTPSA id q132sm4877466pfq.16.2019.09.25.01.18.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 01:18:41 -0700 (PDT)
Date: Wed, 25 Sep 2019 13:48:37 +0530
From: Rohit Sarkar <rohitsarkar5398@gmail.com>
To: linux-iio@vger.kernel.org
Subject: Hardware prerequisites for driver development
Message-ID: <20190925081836.GA22717@SARKAR>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: driverdev-devel@linuxdriverproject.org, linux-newbie@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,
This is probably a real rookie question.
I have been interested in contributing to the driver subsystems such as
iio. I have submitted some minor patches but nothing substantial.
I feel that I need some hardware to be able to contribute more.
What hardware would I need to get started?
Where would I get this from?

Thanks,
Rohit
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
