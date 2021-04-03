Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D97353419
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Apr 2021 15:16:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 627D041465;
	Sat,  3 Apr 2021 13:16:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n_997WQS42vO; Sat,  3 Apr 2021 13:16:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 54B0440114;
	Sat,  3 Apr 2021 13:16:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3F90F1BF5A0
 for <devel@linuxdriverproject.org>; Sat,  3 Apr 2021 13:16:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2DB6041A82
 for <devel@linuxdriverproject.org>; Sat,  3 Apr 2021 13:16:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S1LTLC99yE4E for <devel@linuxdriverproject.org>;
 Sat,  3 Apr 2021 13:16:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C7FD941A7E
 for <devel@driverdev.osuosl.org>; Sat,  3 Apr 2021 13:16:36 +0000 (UTC)
IronPort-SDR: yg0FvNv8wh+pgB32Q+gAMC0HHOe4Vz9h7ZkDtMVlK+S9KjVIaarwQLj8NIOdBPeley03Ic5SGN
 BGZnmM4suTxQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9943"; a="192713703"
X-IronPort-AV: E=Sophos;i="5.81,302,1610438400"; 
 d="gz'50?scan'50,208,50";a="192713703"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2021 06:16:35 -0700
IronPort-SDR: 7KG1b9vehM5cW36muAlMIl20/SJAwUQO+qPQ3FofCFQ1uet3TaEa/i4pgI+QIceltLJq9ZCflx
 czBB3SzlwNAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,302,1610438400"; 
 d="gz'50?scan'50,208,50";a="420048242"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 03 Apr 2021 06:16:33 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lSg8f-0007hG-82; Sat, 03 Apr 2021 13:16:33 +0000
Date: Sat, 3 Apr 2021 21:16:03 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_remove_return_value 16/24]
 drivers/tty/serial/pch_uart.c:1815:9: error: 'port_regs_ops' undeclared
Message-ID: <202104032159.gSxBU4Vq-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Dxnq1zWXvFF0Q93v"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, kbuild-all@lists.01.org
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--Dxnq1zWXvFF0Q93v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_remove_return_value
head:   b133d227ed48382c8cf8f977f69279cf3a0e0ac4
commit: 0ce3084ec1fef72edd1edee6d144626178a47d4a [16/24] tty: serial: pch_uart.c: remove debugfs dentry pointer
config: ia64-randconfig-r034-20210403 (attached as .config)
compiler: ia64-linux-gcc (GCC) 9.3.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=0ce3084ec1fef72edd1edee6d144626178a47d4a
        git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
        git fetch --no-tags driver-core debugfs_remove_return_value
        git checkout 0ce3084ec1fef72edd1edee6d144626178a47d4a
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross ARCH=ia64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/ia64/include/asm/pgtable.h:154,
                    from include/linux/pgtable.h:6,
                    from arch/ia64/include/asm/uaccess.h:40,
                    from include/linux/uaccess.h:11,
                    from arch/ia64/include/asm/sections.h:11,
                    from include/linux/interrupt.h:20,
                    from include/linux/pci.h:38,
                    from drivers/tty/serial/pch_uart.c:9:
   arch/ia64/include/asm/mmu_context.h: In function 'reload_context':
   arch/ia64/include/asm/mmu_context.h:127:41: warning: variable 'old_rr4' set but not used [-Wunused-but-set-variable]
     127 |  unsigned long rr0, rr1, rr2, rr3, rr4, old_rr4;
         |                                         ^~~~~~~
   drivers/tty/serial/pch_uart.c: In function 'pch_uart_init_port':
>> drivers/tty/serial/pch_uart.c:1815:9: error: 'port_regs_ops' undeclared (first use in this function)
    1815 |        &port_regs_ops);
         |         ^~~~~~~~~~~~~
   drivers/tty/serial/pch_uart.c:1815:9: note: each undeclared identifier is reported only once for each function it appears in


vim +/port_regs_ops +1815 drivers/tty/serial/pch_uart.c

  1725	
  1726	static struct eg20t_port *pch_uart_init_port(struct pci_dev *pdev,
  1727						     const struct pci_device_id *id)
  1728	{
  1729		struct eg20t_port *priv;
  1730		int ret;
  1731		unsigned int iobase;
  1732		unsigned int mapbase;
  1733		unsigned char *rxbuf;
  1734		int fifosize;
  1735		int port_type;
  1736		struct pch_uart_driver_data *board;
  1737		char name[32];
  1738	
  1739		board = &drv_dat[id->driver_data];
  1740		port_type = board->port_type;
  1741	
  1742		priv = kzalloc(sizeof(struct eg20t_port), GFP_KERNEL);
  1743		if (priv == NULL)
  1744			goto init_port_alloc_err;
  1745	
  1746		rxbuf = (unsigned char *)__get_free_page(GFP_KERNEL);
  1747		if (!rxbuf)
  1748			goto init_port_free_txbuf;
  1749	
  1750		switch (port_type) {
  1751		case PORT_PCH_8LINE:
  1752			fifosize = 256; /* EG20T/ML7213: UART0 */
  1753			break;
  1754		case PORT_PCH_2LINE:
  1755			fifosize = 64; /* EG20T:UART1~3  ML7213: UART1~2*/
  1756			break;
  1757		default:
  1758			dev_err(&pdev->dev, "Invalid Port Type(=%d)\n", port_type);
  1759			goto init_port_hal_free;
  1760		}
  1761	
  1762		pci_enable_msi(pdev);
  1763		pci_set_master(pdev);
  1764	
  1765		spin_lock_init(&priv->lock);
  1766	
  1767		iobase = pci_resource_start(pdev, 0);
  1768		mapbase = pci_resource_start(pdev, 1);
  1769		priv->mapbase = mapbase;
  1770		priv->iobase = iobase;
  1771		priv->pdev = pdev;
  1772		priv->tx_empty = 1;
  1773		priv->rxbuf.buf = rxbuf;
  1774		priv->rxbuf.size = PAGE_SIZE;
  1775	
  1776		priv->fifo_size = fifosize;
  1777		priv->uartclk = pch_uart_get_uartclk();
  1778		priv->port_type = port_type;
  1779		priv->port.dev = &pdev->dev;
  1780		priv->port.iobase = iobase;
  1781		priv->port.membase = NULL;
  1782		priv->port.mapbase = mapbase;
  1783		priv->port.irq = pdev->irq;
  1784		priv->port.iotype = UPIO_PORT;
  1785		priv->port.ops = &pch_uart_ops;
  1786		priv->port.flags = UPF_BOOT_AUTOCONF;
  1787		priv->port.fifosize = fifosize;
  1788		priv->port.line = board->line_no;
  1789		priv->port.has_sysrq = IS_ENABLED(CONFIG_SERIAL_PCH_UART_CONSOLE);
  1790		priv->trigger = PCH_UART_HAL_TRIGGER_M;
  1791	
  1792		snprintf(priv->irq_name, IRQ_NAME_SIZE,
  1793			 KBUILD_MODNAME ":" PCH_UART_DRIVER_DEVICE "%d",
  1794			 priv->port.line);
  1795	
  1796		spin_lock_init(&priv->port.lock);
  1797	
  1798		pci_set_drvdata(pdev, priv);
  1799		priv->trigger_level = 1;
  1800		priv->fcr = 0;
  1801	
  1802		if (pdev->dev.of_node)
  1803			of_property_read_u32(pdev->dev.of_node, "clock-frequency"
  1804						 , &user_uartclk);
  1805	
  1806	#ifdef CONFIG_SERIAL_PCH_UART_CONSOLE
  1807		pch_uart_ports[board->line_no] = priv;
  1808	#endif
  1809		ret = uart_add_one_port(&pch_uart_driver, &priv->port);
  1810		if (ret < 0)
  1811			goto init_port_hal_free;
  1812	
  1813		snprintf(name, sizeof(name), "uart%d_regs", priv->port.line);
  1814		debugfs_create_file(name, S_IFREG | S_IRUGO, NULL, priv,
> 1815				    &port_regs_ops);
  1816	
  1817		return priv;
  1818	
  1819	init_port_hal_free:
  1820	#ifdef CONFIG_SERIAL_PCH_UART_CONSOLE
  1821		pch_uart_ports[board->line_no] = NULL;
  1822	#endif
  1823		free_page((unsigned long)rxbuf);
  1824	init_port_free_txbuf:
  1825		kfree(priv);
  1826	init_port_alloc_err:
  1827	
  1828		return NULL;
  1829	}
  1830	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--Dxnq1zWXvFF0Q93v
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICPdmaGAAAy5jb25maWcAlDxbb+M2s+/9FUILHLQP2ybOZXdxkAeKomx+1m1JynHyIriJ
d2s0G+ezk7b7788MqQtJUd4eoGjjmSE5HA7nSvWnH36KyNvr/uvmdfeweXr6Fn3ZPm8Pm9ft
Y/R597T93ygpo6JUEUu4+hWIs93z2z+/7TbXl9HVr+ezX8/eHR4uo+X28Lx9iuj++fPuyxsM
3+2ff/jpB1oWKZ83lDYrJiQvi0axtbr5EYe/e8KZ3n15eIh+nlP6S/Tx14tfz360xnDZAOLm
WweaD/PcfDy7ODvraTNSzHtUD84SnCJOk2EKAHVks4vLYYbMQpxZLCyIbIjMm3mpymEWC8GL
jBdsQHHxqbktxRIgsP+formW5lN03L6+vQwS4QVXDStWDRGwOM+5urmY9dOXecUzBrKSymK9
pCTrePyxl1Ncc+BdkkxZwISlpM6UXiYAXpRSFSRnNz/+/Lx/3v7yIzDakshbUkW7Y/S8f0We
LcSdXPGK2rgWc0sUXTSfalajHPoBVJRSNjnLS3HXEKUIXQQG15JlPB52uSArBkKBCUkNGger
wq6zTpog3ej49vvx2/F1+3WQ5pwVTHCqhZ+xOaF3ltJYuEqUMQuj5KK8HWMqViS80KcaHkYX
vHIPPylzwgsXJnkeImoWnAnca4DdXPLwqi0iuI7GlXle63PYPj9G+8+ezDpyLWIKOrWUZS0o
axKiyHg1xXPWrIZT6HRRC1ljBfybLu2DrwRjeaWaoixY4MQ79KrM6kIRcRcYaw/TB0+r+je1
Of4Zve6+bqMN7Oz4unk9RpuHh/3b8+vu+cugDchPAwMaQmkJS8AB2kusuFAeuimI4isW1PtY
Jqg3lIEywwgV2pHkzh7gFLqblnBJ4owl7tTtyfyLTVnXCTjmssyA07IYyUfQOpLji6FAnA3g
hpODHw1bV0xYlkU6FHqMByJyKfXQVi98lBKEBhaSCrQGzVleFi6mYAyMFpvTOOO2kUNcSoqy
VjfXl2MgKB5Jb86vnalKGqN07CPwuGoEI0mTx8FTcEXXX6el+cOetYNpfQjoAV8uYB2w0LbR
Rgudgnnhqbo5f2/D8URzsrbxs+GS8EItwaynzJ/jwjGVdQFCBg1rJF2ASPWN7qylfPhj+/j2
tD1En7eb17fD9jhoRg0+M6+0oAZuW2Bc0yVTstHX4+ZqEFVgQs8lAtfnsw+Wp5yLsq6kLUXw
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

--Dxnq1zWXvFF0Q93v
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--Dxnq1zWXvFF0Q93v--


