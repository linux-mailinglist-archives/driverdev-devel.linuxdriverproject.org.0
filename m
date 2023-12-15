Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E93814587
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 Dec 2023 11:28:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 33A1282D7C;
	Fri, 15 Dec 2023 10:28:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 33A1282D7C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JEwRyUt-eKpJ; Fri, 15 Dec 2023 10:28:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 00C08829B6;
	Fri, 15 Dec 2023 10:28:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 00C08829B6
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 605F01BF418
 for <devel@linuxdriverproject.org>; Fri, 15 Dec 2023 10:28:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 37B1482D7C
 for <devel@linuxdriverproject.org>; Fri, 15 Dec 2023 10:28:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37B1482D7C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QPzS8wECTqqr for <devel@linuxdriverproject.org>;
 Fri, 15 Dec 2023 10:28:36 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 15 Dec 2023 10:28:36 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28DCC829B6
Received: from khi.mrd-esa1.in (mrdesa1.ptcl.net [59.103.239.93])
 by smtp1.osuosl.org (Postfix) with ESMTP id 28DCC829B6
 for <devel@linuxdriverproject.org>; Fri, 15 Dec 2023 10:28:35 +0000 (UTC)
Message-Id: <298419$3p0bg@khi.mrd-esa1.in>
X-IPAS-Result: =?us-ascii?q?A2EmTQAvKHxl/+fRJidaHQEBAQEJARIBBQUBQAmBRgIYA?=
 =?us-ascii?q?QEBAYIFh0KRY4Ilm32BXg8BAQEBAQEBAQELQgQBAYUGhzQnOQUNAQIEAQEBA?=
 =?us-ascii?q?QMCAwEBAQEBAQgBAQEFAQEBAQEBBgMBAQECgRmFLwwIMoI/g34BAQcBAQUnV?=
 =?us-ascii?q?hUTDQImAkkWRwEBAYMOAQGBZAEBMq9dgTIaZ4RfhTundhSECy4BiBoBgVCEF?=
 =?us-ascii?q?YsRiRQVglMEg2KCKYMNB4Yjg3OOCgcCBW9GcBsDBwN/DysHBDAiBgkULSMGU?=
 =?us-ascii?q?AQoIQkTEkBtgkQKgQE/Dw4Rgj5eNhlIgloVDDRKdRBCF4ERbhsSHjcREBcNA?=
 =?us-ascii?q?wh0HQIRIzwDBQMEMwoSDQshBVYDRQZJCwMCGgUDAwSBMAUNHgIQLCcDAxJJA?=
 =?us-ascii?q?hAUAzsDAwYDCjEDMIEZDE8DaR8yCTwPDBsCOQ0nIwIsVgUQAhYDJBo2EQkLK?=
 =?us-ascii?q?AMsBjgCEwwGBgleJhYJBCcDCAQDVAMjdxEDBAwDFwcLBzkGBQgHEAQIGQMzE?=
 =?us-ascii?q?R03CQN4PTUIDBtECEcdEqYCgSmBGBEIQQ5ES5IsDIN7i1aCGqBTB5dCilqbI?=
 =?us-ascii?q?AOSOIYrkhogom2HSYF+gnIagRxRGYgThigWk1yBJAIHCwEBAwmJFA6BQAEB?=
IronPort-PHdr: A9a23:bbVGHxIW/2XO6NOAYtmcuJRgWUAX0o4c3iYr45Yqw4hDbr6kt8y7e
 hCFtbM31AWCBN+TwskHotSVmpijY1BI2YyGvnEGfc4EfD4+ouJSoTYdBtWYA1bwNv/gYn9yN
 s1DUFh44yPzahANS47xaFLIv3K98yMZFAnhOgppPOT1HZPZg9iq2+yo9JDffQZFiCCjbb9uM
 hm6ohjdutcLioZ+N6g9zQfErXRPd+lK321kIk6dkQjh7cmq5p5j9CpQu/Ml98FeVKjxYro1Q
 79FAjk4Km45/MLkuwXNQguJ/XscT34ZkgFUDAjf7RH1RYn+vy3nvedgwiaaPMn2TbcpWTS+6
 qpgVRHlhDsbOzM/7WrYjdB9gaxHrB68vhBz35PYa5yROPZjfq7ReNUXTndDUMlMTSxMGp+zY
 IQAAeQcI+hWr5fwqVUUrRWkHgSsGPrvxiNUinPqwaE30eIsGhzG0gw6GNIOtWzZodLuNKgIS
 OC1zbLHwS/ZYPNW3Dfy9pXHfws7rvGUWbJ8a9beyU4qFw/fllWQqpXoMjWI3esCr2aV9fBvV
 f6zi2E5sQFxpCCiyMksh4TXmo4Y1lTJ+Th3zog1K9C1R0F2b9GlHZZMuS+XOZZ7TMwjTm12t
 is3yqMKtIC7cSYK1Jkqwx/SZv+HfYWO/xntV/6RLC92iX9hYr6yiRW//VK+xuHgUsS4ykhGo
 yRYntTKq3sAyRjT6tWcSvth4EihwyuB1wHS6+5aOU04i6TWJ4Inz7UtjJQcq17DETXzmEjui
 a+WcVgr9faw5uT8Z7XmuoecN4hpigHiKqgumtKwAeA/MgUWQWaV5P6w1KX58k3/WblKluc5n
 bXYsJDUJMQUurS1DBNS0oYm8Rq/Ezmn3MwZnXkBMl1FZAqKgobtNl3ULv31Du2zj0qwnDpv3
 fzKILPsDojVInjGirjhfLJ960BGyAo0yNBS/4lUBasYIPLyQUD9rsbXDh88MwOq3unqE89y1
 psaWW6VHqCZN6bSvUWQ5uIsO+WMYpQaty7nK/c5//7ukWM5mVgFcKW02ZYbcGq4Eeh+I0WFf
 Xrshc8MHXkUsQc+Q+Hni0ONXiRNaHqrUaIx5TE2BJ+/AYrMSY2inKKO0D6gEZFKeG9LCkmAH
 HPpeoiKQPgDdCKfIsFunzEGS7esRY8s2AqutQDgzbpoM/Tb+yICuZL5ydh5//fTmg0q9TxoE
 8Sd1HmAQH1znmMWWTA2xrpzrVF8x1qH1aV1h/5VGNxT6v5KTws2L5Hcz+1mC9zoXALBf8uGS
 FGiQtq8Gz0xUMw+w8MUY0Z8HdWijwvO0DG3A78ajLyEGpo08q3G03ftIMZ9zm7K1LM9gFk+X
 stPKWqmi7Zh+AfPHIHJnV+WmqmreKsBxSLB6nmMwXaUs01BXwN9UKbIUHAGakbSrNn04kPPQ
 6agCbklLwRO18CPJ6lUZdDrllpLRevsN8rFbmO+hWiwAwyExrSWbIrlY2kdxjnSCFAYkwAP+
 naLLRYyCju/r2/QETBiCE/jbkPx/eR6tH+3UlU4zwKOYkxuy7W4+xEUheWdSv8K2rIEuz8hp
 i51HFa7w9LZFd6AqxB9c6VbZNMx+E1H2n7BtwxhIpygKLhviUACfAtru07iyw94B4RencQzr
 n4l0ARyJriB3F5Odz6XwZT9NqTTJ2n8/R2gd7fa1kzd3duV5KgD9ug3plb5sw61Fkcu73tn3
 sJU0nub4JXKFRcSXozrXkYw7Rh6qOKSXi5orYDZ0yY8bK3r62fZ14xzXbYN0QqpOdFeKuWGD
 EW6R9YTHsmkbuUqnlWlRhscOKZZ86tyJ8DwJMGLwKq6AOE1yDaviGVN7YR51WqK/jRxUKjD2
 JNTl6K2xAyCAmPnhU6guIb+mYVJaRkbBm75wi/hQpZSMP4hNb0XAHujdpXkju51gITgDicFn
 GM=
IronPort-Data: A9a23:LJXyj68BALDZm6mT8BP0DrUDzHiTJUtcMsCJ2f8bNWPcYEJGY0x3m
 2AWXGGEPavcajf3ctAjOorl9U5QsMTQy4A2QQE6+SoxFiIbosfsO4+Ufxz6V8+wwmwvb67FA
 +E2MISowBUcFyeEzvuVGuG96yE6j8lkf5KkYAL+EnkZqTRMFmF51XqPp8Zj2tQz2ILgXlvU0
 T/Pi5S31GGNimYc3l08tvrrRCNH5JwebxtB4zTSzdgS1LPvvyF94KA3fMldHFOhKmVgJdNWc
 s6YpF2PEsE1yD92Yj+tuu6TnkTn2dc+NyDW4pZdc/DKbhSvOkXee0v0XRYRQR4/ttmHozx+4
 O1glZm6QBdzBZXVib0lQz15Mx9jN6ITrdcrIVDn2SCS53H9NWPlxbB2BUo3M4wTvO1wBCdS6
 pT0KhhWP1bY16TsmOP9ELI17iggBJCD0Ic3oXh5zDufBPYjTJzrSr3Oo9Rf2XEohaiiGN6FN
 pREM2sxBPjGSzZVGXgUGZMnp92T3mSkQyZGhkK7vqVitgA/yyQ0itABKuH9INHXGZVYl0vdq
 DKbpiGlXhoXcdbHxGfAoyz3jOSSk3+kVdlPPKyx8PJnkBuJ2wQ7AxoIWEH9+Kfo2x/hBo8Pc
 gob+zZoq6k580iiCMfwQwe5pn+stAMTQNdWHKsx7wTl4qff6QiQWjYIC2RMMNVj6JFmGHl7i
 A7U2t22CTE077DKQyyW+5+EoDX0PjIaRUdYPXVfFFJcvoCy+Nl1jUPfRYhzCbzwit7tMTD23
 z2O6iM5gt07gMUAhv2yowqC3Dmir92VEwVko1TZAGngt1MpadSuN4WjtADVxeRHKp+EQx+Gp
 ndss5LGtrtXVMjWzXDQEb9UWurxvq7ZdWSZj0RmGZIs7D+q03KkeYtR5jA4JVsBGs1UdGKzP
 R+M/F5Y6MUWYCWjZup+PovhTptzkvOwH4XrC/nfMfJHZ5Q3fwiClAk/PkKc1mzjwQ13mvo1f
 MvAK5rpXXtEBeFtxjbnSuoQju9wnHEWxm7JQ53/iRO93tK2OC/IQOlcOgrLMbphvObY/1/ft
 t9SPJfPl0wGWbWlPiTeqtIaBVMHN342AdbxscM/XrTcelU9Xj1wVqOAne98K9Y+wPoJy7uZo
 yz7QFNEjULlgnfKAQyVcTV+c/bwUI1j6Ch+Pis2MhOs2H0nJN/p86oVMZAwcbQu6fZk1/cyS
 OMKE+2LWKUSGmSe9XFCMpD06dBsKUjuj1rQNG+pPGhnJMdsGFKSoY7McQ7m9S1IBS2y3eNk+
 +f7j1qCGsNfGl0+XYCPOajxkAjr+CFYnudaQ0qOKd5WEG22/IY6diL/1Lo+L8hcbEmfzDLfh
 l+cUFJDr+CWr9VkodTEiK6srIqzFeZ6WE1AEAHz6rOnaSvc8mao2J5JeOOBfDSbW2b9+aHkb
 uJQp9mib6FbkgoauoBwTOwwlqhl64a2+uYKwlhpRXvHMF/3U5t4I3CA2s8Ju7Al7r4FuQCtX
 1mRpsBEPqmMMcX+ClQDOlV/Prve1PYQhyOM9eY6OW3/7S5zurWCWERWeRKLjUR1I7Z4Kp8Nx
 eYnpd5T7lLviVwtKNnupixZ6WmIBngBVbg3uosbHoLxkhAsyFxJfdrbECCeyJGIcdBXcVMnJ
 DKPjbHqmblGyUeEdXcvU3HQtdexnrxV6VYRnBlYfwXPwIGc7hMq4CBsHf0MZlw95n16PyhbY
 ACH62UdyW6yE/uESSSNs61A2+2MOfFBxnHM9g==
IronPort-HdrOrdr: A9a23:jC2MT6AHdUbOgPnlHem655DYdb4zR+YMi2TDGXoQdfSdGvb1qy
 nIppkmPH7P4wr5N0tQ+uxoVJPgfZq+z/RICOAqVN+ftW/dyQmVxepZgrcKrQePJ8SEzJ856Z
 td
X-Talos-CUID: =?us-ascii?q?9a23=3APyRyfGiHpb9+o+CLFs00f5Hu4jJuSlD9yX3ZMxW?=
 =?us-ascii?q?DMX94EYWFbX6wxr5unJ87?=
X-Talos-MUID: 9a23:huaSaAvXw0U3AvPbrc2nrytBG8R54r2VMntVjM42oNeqJQJrNGLI
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.04,278,1695668400"; 
   d="scan'208";a="3965296"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from unknown (HELO TS.pan-pacific.com.tw) ([39.38.209.231])
 by khi.mrd-esa1.in with ESMTP; 15 Dec 2023 15:21:17 +0500
MIME-Version: 1.0
Content-Description: Mail message body
Subject: I can explain
To: "ken385l710sd6215@sta.nir.jp" <saqib.ahmed@apl.com.pk>
From: <saqib.ahmed@apl.com.pk>
Date: Fri, 15 Dec 2023 18:21:09 +0800
X-Priority: 1 (High)
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
Reply-To: lamibello@naver.com, "<"@osuosl.org
Cc: eisar.ismail@ptcl.net.pk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

G r e e t i n g s to you and your family, I will like to share this little detail with you that would be of mutual benefit to you and me. There's a DRC Deposit Release Case which is open in a Security company v a u l t because the owner is now deceased a n d there's no clear n e x t of k-in to i n h e r i t or clear the deposit.

As a stock consultant working with the Security Company, I noticed that the deposit did not have proper details registered. I propose that we work together to clear the deposit as I am very sure it is a deposit with very high value because of the name of the depositor.

This is totally 100% r i s k-free and would be mutually beneficial. That's all the detail I can provide for now until I receive your positive r e p l y and I can explain further.

Regards,
Mr. Alan Lambert
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
